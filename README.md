# Verde Verificado

Registro verificable de créditos de carbono sobre **Stellar / Soroban** que impide el doble conteo: cada tonelada certificada es un activo único que se emite, se transfiere y se retira una sola vez. Proyecto del equipo para Blockchain Builders 101.

- Contrato en testnet: [`CC7ZF3ZK…DKMLI`](https://stellar.expert/explorer/testnet/contract/CC7ZF3ZK7PGLKZXQASAROTT6WPXRYFP5PV2BQSSUEMEO7VXWE5JKDMLI)
- Front en vivo: https://verde-verificado-app-emprendamosahora2030-5355s-projects.vercel.app
- Documentación de la semana 3: [`docs/semana3/Documentacion.md`](docs/semana3/Documentacion.md)

## Requisitos

- Un navegador moderno (Chrome, Brave o Firefox).
- Python 3 o Node.js, solo para servir el front en local.
- Para emitir, transferir o retirar: la extensión [Freighter](https://www.freighter.app/) configurada en **Testnet**.
- Para probar el contrato (opcional): Rust y la CLI de Stellar.

## Instalación

El front no tiene dependencias que instalar: el SDK de Stellar y la API de Freighter se cargan por CDN.

```bash
git clone https://github.com/emprendamosahora2030-sudo/verde-verificado.git
cd verde-verificado
```

## Cómo correrlo

```bash
cd frontend
python3 -m http.server 8000     # o: npx serve .
```

Abrir <http://localhost:8000>. En la pestaña "Consultar" escribir `VV001` para ver un crédito de ejemplo. El ID del contrato, la URL del RPC y la passphrase están en las tres constantes al inicio del `<script>` de `frontend/index.html`.

Pruebas del contrato (opcional): `cd contracts/verde-verificado && cargo test`.

## Estructura

```
verde-verificado/
├── contracts/verde-verificado/   contrato Soroban (Rust) y sus pruebas
├── frontend/index.html           interfaz del producto
├── docs/                         documentación por semana
├── scripts/                      despliegue en testnet
└── README.md
```

