# Verde Verificado — Product Blueprint

## Priorización de historias

Criterio de priorización: impacto regulatorio (Decreto 973/2026) + valor de confianza para el usuario final. La prevención de doble-conteo encabeza el backlog porque es el problema oficial del equipo (Problem Brief) y el fundamento técnico del que dependen certificación, auditoría y adopción institucional.

1. Prevención de doble-conteo de un mismo crédito (núcleo del Problem Brief)
2. Verificación en tiempo real del estado de un crédito antes de comprarlo
3. Consulta del historial inmutable por auditores/reguladores (Decreto 973/2026)
4. Registro de créditos verificados por proyectos forestales (RIA/Antioquia Reverdece)
5. Certificado digital verificable para el comprador
6. Dashboard del ciclo de vida del crédito (para evaluadores/jurado)
7. Reportes exportables del historial de transacciones para cumplimiento normativo

## Propuesta de valor

Verde Verificado resuelve la falta de trazabilidad confiable en el mercado de créditos de carbono en Colombia, que hoy permite el doble-conteo o la doble-venta de un mismo crédito. La verificación actual depende de reportes manuales y registros centralizados, vulnerables a error humano y manipulación. Verde Verificado tokeniza cada crédito como un activo único en la red Stellar mediante un contrato inteligente Soroban que impide técnicamente su duplicación: desde la emisión hasta el retiro, el historial queda registrado de forma inmutable y verificable públicamente por cualquier parte.

A diferencia de los registros tradicionales, Verde Verificado ofrece verificación pública en tiempo real: cualquier comprador, auditor o regulador puede confirmar el estado exacto de un crédito sin depender de la palabra del emisor. Esto conecta directamente con el usuario del Problem Brief: compradores corporativos que necesitan evidencia auditable de su compensación ambiental, proyectos forestales que necesitan demostrar su impacto real, y reguladores que deben hacer cumplir el Decreto 973 de 2026 sin capacidad de fiscalización manual a gran escala.

## Flujo de usuario

1. **Proyecto forestal** (ej. vinculado a RIA/Antioquia Reverdece) solicita verificación de hectáreas reforestadas/toneladas de CO₂ capturadas.
2. **Verificador** valida los datos de campo y autoriza la emisión.
3. **Emisión**: se crea el token único en Stellar/Soroban representando el crédito verificado.
4. **Comprador corporativo** consulta el estado del crédito antes de comprarlo, confirmando que no ha sido vendido antes.
5. **Transferencia**: el crédito pasa del proyecto al comprador; la transacción queda registrada de forma inmutable.
6. **Certificación**: el comprador recibe un certificado digital verificable con enlace a la transacción on-chain.
7. **Retiro/cierre**: al usarse como compensación, el crédito se marca como retirado, bloqueando cualquier reventa futura.

## Alcance del MVP

**Dentro del MVP:** contrato inteligente con ciclo completo (emisión → transferencia → verificación → retiro) y protección anti-doble-conteo a nivel de protocolo; certificado de tokenización verificable por crédito; consulta pública del historial on-chain.

**Fuera del MVP (deseable, no crítico):** interfaz web completa para usuarios no técnicos; integración automatizada con fuentes de datos satelitales de verificación forestal; dashboard analítico con métricas agregadas del mercado; onboarding de múltiples verificadores simultáneos.

**Justificación:** el valor diferencial de Verde Verificado está en la garantía criptográfica de no-duplicación, no en la interfaz. Un MVP con el contrato probado on-chain ya demuestra el argumento regulatorio central ante jurado y aliados institucionales; la interfaz y las integraciones avanzadas se construyen después sin alterar la lógica de confianza ya validada.

## Lean Canvas

| Bloque | Contenido |
|---|---|
| **Problema** | Doble-conteo/doble-venta de créditos de carbono; falta de trazabilidad verificable exigida por el Decreto 973/2026 |
| **Segmento de usuarios** | Compradores corporativos que compensan emisiones; proyectos forestales/RIA generadores de créditos; reguladores y auditores (MinAmbiente) |
| **Propuesta de valor única** | Trazabilidad inmutable y verificable públicamente por diseño, no por confianza en el emisor |
| **Solución** | Tokenización de créditos como activo único en Stellar/Soroban con contrato anti-doble-conteo |
| **Canales** | Alianzas institucionales (RIA, Antioquia Reverdece), Ruta N, Stellar Apex |
| **Métricas clave** | Créditos emitidos, transferencias verificadas, intentos de doble-conteo bloqueados, proyectos forestales vinculados |
| **Ventaja diferencial** | Trazabilidad verificable por diseño vs. registros centralizados auditables solo bajo solicitud |
| **Estructura de costos e ingresos** | Costos: infraestructura testnet/mainnet, verificación de campo. Ingresos: comisión por tokenización/transacción |

*(Pendiente: convertir esta tabla en imagen de una página — ej. con Canva — para el formato final.)*

## Backlog priorizado (Kanban)

Tablero: [Verde Verificado — Backlog](https://github.com/users/emprendamosahora2030-sudo/projects/2) — 7 tareas priorizadas cubriendo los roles del equipo (contrato Soroban, interfaz, pruebas de aceptación, certificado digital, dashboard para el jurado, arquitectura y alianzas institucionales).

## Arquitectura inicial

La arquitectura tiene tres capas. **Interfaz**: punto de interacción con proyectos forestales, compradores y verificadores (desarrollo frontend a cargo de Daniel). **Lógica de negocio**: el contrato inteligente Soroban (a cargo de Emir), que define las reglas del ciclo de vida del crédito y aplica la protección anti-doble-conteo directamente a nivel de contrato. **Red Stellar**: la capa donde el contrato se despliega y ejecuta; cada transacción queda registrada de forma inmutable en el ledger, consultable públicamente. La red entra en el punto crítico del flujo: cada cambio de estado del crédito se escribe on-chain, de modo que el historial completo es auditable por cualquier tercero sin depender del equipo como intermediario de confianza.

## Uso de Stellar y justificación

Verde Verificado usa **Soroban** para codificar las reglas del ciclo de vida del crédito, incluida la protección anti-doble-conteo a nivel de protocolo, eliminando la posibilidad de alteración unilateral por el operador. Usa el **ledger de Stellar** como registro inmutable y de consulta pública. Se apoya en los exploradores públicos de Stellar (Stellar Expert / Stellar Lab) para que compradores, auditores y reguladores verifiquen el estado de un crédito de forma independiente. Esta elección responde directamente al criterio de pertinencia del Problem Brief: el problema identificado exige una solución donde la confianza no dependa de una entidad central, y Stellar/Soroban ofrece costos de transacción bajos, velocidad adecuada y un ecosistema de verificación pública ya maduro — condiciones necesarias para que el argumento regulatorio ante el Decreto 973/2026 sea creíble ante jurado y aliados institucionales.
