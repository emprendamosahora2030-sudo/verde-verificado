$ErrorActionPreference = "Stop"

$Red = "testnet"
$AdminId = "emisor"
$VerificadorId = "verificador"
$CompradorId = "comprador"
$CreditoId = "VV001"
$Toneladas = "100"
$Proyecto = "PROY-VV-001"
$BeneficiarioRetiro = "EMPRESA_DEMO"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RepoRoot = Split-Path -Parent $ScriptDir
$ContractDir = Join-Path $RepoRoot "contracts/verde-verificado"

function Get-ExplorerContract($id) { "https://stellar.expert/explorer/testnet/contract/$id" }

Write-Host "== 1/8 Compilando contrato a WASM =="
$OutDir = Join-Path $ContractDir "target/deploy"
Push-Location $ContractDir
try { stellar contract build --out-dir $OutDir }
finally { Pop-Location }
$WasmPath = Join-Path $OutDir "greenledger.wasm"
if (-not (Test-Path $WasmPath)) { throw "No se encontro $WasmPath" }
Write-Host "WASM: $WasmPath"

$AdminAddr = (stellar keys address $AdminId).Trim()
$VerificadorAddr = (stellar keys address $VerificadorId).Trim()
$CompradorAddr = (stellar keys address $CompradorId).Trim()
Write-Host "Emisor/Admin: $AdminAddr"
Write-Host "Verificador: $VerificadorAddr"
Write-Host "Comprador: $CompradorAddr"

Write-Host "== 2/8 Desplegando contrato =="
$ContractId = (stellar contract deploy --wasm $WasmPath --source $AdminId --network $Red).Trim()
Write-Host "Contract ID: $ContractId"
Write-Host "Explorador: $(Get-ExplorerContract $ContractId)"

Write-Host "== 3/8 initialize(admin) =="
stellar contract invoke --id $ContractId --source $AdminId --network $Red -- initialize --admin $AdminAddr

Write-Host "== 4/8 agregar_verificador(verificador) =="
stellar contract invoke --id $ContractId --source $AdminId --network $Red -- agregar_verificador --verificador $VerificadorAddr

Write-Host "== 5/8 emitir_credito($CreditoId) =="
$Sha256 = [System.Security.Cryptography.SHA256]::Create()
$Bytes = [System.Text.Encoding]::UTF8.GetBytes("certificado-demo-$CreditoId")
$HashBytes = $Sha256.ComputeHash($Bytes)
$HashCertificado = -join ($HashBytes | ForEach-Object { $_.ToString("x2") })

stellar contract invoke --id $ContractId --source $VerificadorId --network $Red -- emitir_credito `
    --verificador $VerificadorAddr --id $CreditoId --propietario $AdminAddr `
    --toneladas $Toneladas --hash_certificado $HashCertificado --proyecto $Proyecto

Write-Host "== 6/8 transferir_credito(-> comprador) =="
stellar contract invoke --id $ContractId --source $AdminId --network $Red -- transferir_credito `
    --id $CreditoId --nuevo_propietario $CompradorAddr

Write-Host "== 7/8 retirar_credito(-> $BeneficiarioRetiro) =="
stellar contract invoke --id $ContractId --source $CompradorId --network $Red -- retirar_credito `
    --id $CreditoId --beneficiario_retiro $BeneficiarioRetiro

Write-Host "== 8/8 historial_credito =="
stellar contract invoke --id $ContractId --source $AdminId --network $Red --send=no -- historial_credito `
    --id $CreditoId --desde 0 --limite 50

Write-Host ""
Write-Host "Contract ID: $ContractId"
Write-Host "Explorador: $(Get-ExplorerContract $ContractId)"