# Emir Aristigueta — Historias de usuario (Fase 1, Semana 2)

**Usuario de GitHub:** `emirdev1`

> Mis historias se enfocan en los roles operativos y de gobernanza que garantizan la integridad del sistema antes de que un crédito entre al mercado: el **verificador acreditado** (responsable de la originación técnica, la vinculación criptográfica del soporte de campo y la emisión por lotes) y el **administrador del protocolo** (responsable de autorizar o revocar verificadores y de suspender preventivamente créditos en litigio o por orden judicial, atendiendo al caso de estudio *Pachamama Cumbal* de nuestro Problem Brief).

## Mis historias de usuario

*Ordenadas de mayor a menor importancia.*

1. Como **verificador ambiental acreditado**, quiero emitir un crédito de carbono registrando su identificador único y el hash SHA-256 del certificado técnico en el contrato inteligente, para garantizar que cada tonelada certificada tenga un respaldo documental inalterable y no se duplique en la red.
2. Como **administrador de Verde Verificado**, quiero autorizar y revocar direcciones de entidades verificadoras mediante firma administrativa en el contrato, para asegurar que únicamente auditores acreditados y con vigencia legal puedan originar créditos en el sistema.
3. Como **administrador de Verde Verificado**, quiero suspender preventivamente un crédito de carbono cuando una autoridad judicial o ambiental emita una medida cautelar, para congelar sus transferencias y retiros en el ledger e impedir fraudes como el ocurrido en el caso Pachamama Cumbal.
4. Como **verificador de un proyecto forestal comunitario**, quiero emitir lotes de hasta 25 créditos de forma atómica en una sola transacción, para reducir sustancialmente los costos de red y asegurar que todas las parcelas validadas queden registradas sin riesgo de inconsistencias parciales.
5. Como **verificador técnico en campo**, quiero firmar cada transacción de emisión directamente con mi billetera Freighter sin compartir llaves privadas con ningún backend centralizado, para asegurar el no repudio y la autoría criptográfica de mi dictamen ambiental.
6. Como **administrador o regulador institucional**, quiero consultar en el contrato el listado y estado de vigencia de las entidades verificadoras autorizadas, para mantener una auditoría transparente y pública sobre quiénes tienen facultades de emisión en el ecosistema.

## La más importante y por qué

**#1 — Emisión de créditos con respaldo criptográfico (hash del certificado).** La emisión es la puerta de entrada de todo el sistema. Si un crédito entra a la red sin un identificador único verificado (`id`) y sin asociar la huella criptográfica SHA-256 del soporte de auditoría en campo, ningún mecanismo posterior (transferencias, retiros o consultas ciudadanas) tendría un activo legítimo que respaldar. Como demostró el análisis del mercado voluntario de carbono en Antioquia en nuestro Problem Brief, el problema del doble conteo nace cuando el soporte técnico no está atado de manera unívoca al registro digital. En Verde Verificado, la función `emitir_credito` del contrato Soroban resuelve esto exigiendo la firma del verificador, validando que el identificador no exista y almacenando la huella del PDF, garantizando que una misma tonelada jamás se emita dos veces.

**Por qué el resto va en ese orden:**

- La **#2** va en segundo lugar porque el control de acceso de verificadores (`agregar_verificador` / `quitar_verificador`) es la barrera de seguridad de la red: sin una gestión estricta de quién puede emitir, cualquiera podría intentar inyectar créditos espurios.
- La **#3** aborda directamente la mayor vulnerabilidad detectada en los registros tradicionales durante el caso *Pachamama Cumbal*: permitir que el administrador congele temporalmente un crédito ante una disputa legal evita que activos cuestionados se sigan transando a espaldas del público.
- La **#4** es vital para la viabilidad económica y técnica en Stellar: el batch minting (`emitir_lote`) permite procesar proyectos comunitarios reduciendo tarifas de red y garantizando atomicidad (todo o nada).
- La **#5** garantiza la descentralización y soberanía de claves: la firma se ejecuta en la billetera local del certificador, sin custodios intermedios.
- La **#6** aporta visibilidad y transparencia institucional, facilitando la rendición de cuentas sobre los permisos activos en el sistema.
