# Entregable 3 — Functional Proof · Verde Verificado

**Red:** Stellar testnet · **Contrato:** [`CC7ZF3ZK…DKMLI`](https://stellar.expert/explorer/testnet/contract/CC7ZF3ZK7PGLKZXQASAROTT6WPXRYFP5PV2BQSSUEMEO7VXWE5JKDMLI)
**Front en vivo:** https://verde-verificado-app-emprendamosahora2030-5355s-projects.vercel.app

## 1. Front construido

El front es una página web única, sin servidor propio, en `frontend/index.html`. Se conecta directamente al contrato Soroban de Verde Verificado a través del nodo RPC público de testnet y firma las operaciones de escritura con la billetera Freighter. La decisión tiene una razón de producto: Verde Verificado promete que cualquier persona puede comprobar un crédito de carbono sin depender de nosotros, y un front que consulta la cadena directamente no puede mostrar nada que la cadena no diga.

La interfaz recorre el flujo principal del MVP del Product Blueprint, desde la emisión de un crédito hasta su retiro definitivo y el certificado de compensación. Tiene seis pantallas, que se eligen con una barra de pestañas numeradas, y un encabezado con tres indicadores: toneladas emitidas, toneladas retiradas y un enlace al contrato en Stellar Expert. Los dos primeros números se leen del contrato cada vez que se carga la página.

**Pantalla 1 · Consultar (pública).** Se escribe el código de un crédito y aparece su ficha: estado (emitido o retirado), toneladas de CO₂, propietario, verificador, proyecto de origen, fechas, beneficiario del retiro y huella SHA-256 del certificado. Debajo se muestra el historial como una línea de tiempo con cada emisión, transferencia y retiro, con su fecha y su ledger. No requiere cuenta ni billetera. Responde a las historias del comprador corporativo y del auditor: confirmar en segundos que un crédito es real, único y no fue usado.

**Pantalla 2 · Verificar PDF.** Se indica el crédito y se adjunta el certificado. El navegador calcula la huella SHA-256 del archivo sin enviarlo a ningún servidor y la compara con la registrada en la cadena. Si el documento fue alterado, aunque sea una letra, la huella cambia y la verificación falla.

**Pantalla 3 · Emitir.** Formulario para verificadores autorizados: código, toneladas, propietario, proyecto y certificado técnico. Solo se registra la huella del archivo. La operación se firma con Freighter y el contrato rechaza a cualquier cuenta que no esté en la lista de verificadores.

**Pantalla 4 · Transferir.** El propietario actual indica el crédito y la nueva dirección. El contrato exige su firma, impide transferir a la misma dirección y bloquea los créditos ya retirados.

**Pantalla 5 · Retirar.** El propietario retira el crédito a nombre de una empresa. Antes de enviar se pide confirmación explícita, porque el retiro es definitivo. Es la pieza que impide el doble conteo: un crédito retirado no admite ninguna operación posterior.

**Pantalla 6 · Certificado.** Para un crédito retirado, genera un certificado con toneladas, beneficiario, fecha, código, huella y contrato, listo para imprimir o guardar como PDF. Quien lo reciba puede validarlo en la pantalla 1.

**Errores comprensibles.** Los códigos de error del contrato se traducen a frases claras en español (por ejemplo, el error `#5` se muestra como “Ese crédito ya fue retirado; no admite más operaciones”), tal como pide la historia de QA del Blueprint.

**Aspectos técnicos.** HTML, CSS y JavaScript sin paso de compilación. Usa `@stellar/stellar-sdk` 13.1.0 y `@stellar/freighter-api` 3.0.0 desde CDN. La configuración está en tres constantes al inicio del script. Respeta el modo claro y oscuro del sistema y funciona en pantallas de celular.

**Cómo verlo funcionando:** abrir el enlace de Vercel indicado arriba, o ejecutarlo en local con las instrucciones del README. Para probarlo con datos reales se puede consultar el crédito `VV001`.

<!-- Captura: agregar docs/semana3/img/consulta-VV001.png con la consulta de VV001 y enlazarla aquí -->

## 2. Decisión técnica

**Opción elegida: A — contrato propio.**

El equipo ya cuenta con un contrato Soroban propio, desplegado y probado en testnet, con su archivo de pruebas dentro del repositorio. Esta semana la decisión queda registrada y justificada.

**Qué hace el contrato y por qué hace falta uno propio.** El problema que eligió el equipo en el Problem Brief es el doble conteo de créditos de carbono. Resolverlo exige reglas muy específicas que se ejecuten en la cadena y no en un servidor nuestro: cada tonelada certificada es un activo único con un ciclo de vida cerrado (emitido, transferido cero o más veces, retirado una sola vez); solo verificadores autorizados pueden emitir; cada crédito guarda la huella SHA-256 de su certificado técnico; y existe un historial de propiedad de solo escritura. Con estas reglas en el contrato, un auditor externo puede comprobarlas sin confiar en el equipo.

**Qué se descartó.** Se descartó la opción B, usar una plataforma existente del ecosistema, como un servicio de escrow o de emisión de tokens genéricos. Esas herramientas resuelven pagos o tokens fungibles, pero no modelan activos únicos con retiro irreversible, lista de verificadores acreditados, huella de certificado ni historial por crédito. Adaptarlas habría significado perder justo las garantías que diferencian al producto, o construir encima una capa de reglas que terminaría siendo un contrato propio.

**Apoyo en el uso de Stellar del Blueprint.** El Blueprint define Soroban para la lógica de negocio, el ledger para el registro permanente, el RPC para conectar la aplicación y Stellar Expert como explorador público independiente. La decisión es coherente con esa arquitectura: el front no tiene backend, lee y escribe sobre el contrato propio y cualquiera puede contrastar lo que ve con el explorador.

## 3. Participación del equipo

| Integrante | Usuario de GitHub | Aporte / responsabilidad en este entregable |
|---|---|---|
| José Luis Olaya | `emprendamosahora2030-sudo` | Base del front y estructura de la documentación; estrategia y negocio; carga final a Apex. |
| Emir Aristigueta | `emirdev1` | Desarrollo blockchain: verificar el front contra el contrato, probar la emisión con Freighter. |
| Daniel Gallego | _(completar usuario)_ | Front: ajustes de diseño y textos, y despliegue en Vercel. |
| Lina Maria Callejas | `LinaKallejas` | Calidad: pruebas del flujo completo, revisión del README y de los bloqueos. |

_Cada integrante ajusta su fila con lo que realmente hizo antes de entregar._

## 4. Bloqueos y siguiente paso

**Pendiente:**
- Probar de punta a punta, con Freighter y una cuenta de verificador, las pantallas de emisión, transferencia y retiro.
- Definir quién administra el contrato y cómo se controla la llave del administrador antes de pasar a mainnet.
- Migrar el SDK del contrato a una versión más reciente y obtener una revisión de seguridad externa antes de mainnet.

**Siguiente paso hacia el MVP:** esta semana se escribe y despliega la versión definitiva de los contratos; después, ejecutar el flujo completo (emitir, transferir, retirar y verificar un PDF) y documentar los hashes de las transacciones.

