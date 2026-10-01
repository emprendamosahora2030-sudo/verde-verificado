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

**Dentro del MVP:** contrato inteligente con ciclo completo (emisión → transferencia → verificación → retiro) y protección anti-doble-conteo a nivel de protocolo; certificado de tokenización