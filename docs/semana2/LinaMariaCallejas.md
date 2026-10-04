# Lina María Callejas — Historias de usuario (Fase 1, Semana 2)

**Usuario de GitHub:** `LinaKallejas`

> Mis historias se enfocan en la **calidad, control de fallos, contingencias operativas y accesibilidad** de Verde Verificado. Como responsable de Gestión del equipo y QA, mi prioridad es garantizar que la interacción entre los usuarios en campo (muchas veces con conectividad intermitente o sin conocimientos criptográficos profundos) y el contrato Soroban sea robusta, predecible y cuente con mensajes de diagnóstico claros ante cualquier fallo o intento de transacción inválida.

## Mis historias de usuario

*Ordenadas de mayor a menor importancia.*

1. Como **responsable de QA y operaciones**, quiero recibir mensajes de error descriptivos y amigables cuando una transacción sea rechazada por el contrato (por ejemplo: identificador duplicado, falta de permisos de verificador o crédito ya retirado), para diagnosticar rápidamente incidencias y evitar confusiones en campo.
2. Como **verificador ambiental en zonas rurales**, quiero que la plataforma valide localmente el formato y la huella del certificado antes de enviar la transacción al contrato, para no consumir recursos de red ni generar transacciones fallidas cuando la conexión sea inestable.
3. Como **usuario de consulta pública**, quiero tener confirmaciones visuales de carga, éxito y estado de la red Stellar en tiempo real, para saber con certeza si mi verificación se completó o si hubo un problema de conectividad con el nodo RPC.
4. Como **auditor de calidad de datos**, quiero verificar que los lotes de emisión (hasta 25 créditos) se procesen atómicamente, de modo que si un solo crédito del lote tiene un error de validación, toda la operación sea revertida sin dejar estados inconsistentes a medias.
5. Como **gestor de producto del equipo**, quiero contar con un registro claro de eventos y logs de transacciones de prueba en Stellar Testnet, para validar sistemáticamente los criterios de aceptación (Dado / Cuando / Entonces) de cada historia de usuario del MVP.
6. Como **usuario con baja conectividad**, quiero que la interfaz web sea ligera y mantenga en caché local las consultas recientes de créditos, para poder revisar datos previamente cargados sin necesidad de reconsultar la red en cada cambio de vista.

## La más importante y por qué

**#1 — Diagnóstico y retroalimentación clara de errores del contrato.** En sistemas Web3 interactuando con contratos inteligentes (Soroban), los fallos técnicos suelen traducirse en códigos de error numéricos o excepciones opacas que confunden al usuario y dificultan el soporte. Dado que Verde Verificado está concebido para ser utilizado por pequeños productores forestales, auditores y compradores que requieren certeza inmediata sobre la validez de un crédito, una retroalimentación transparente cuando una regla de negocio se incumple (ej. prevenir un doble conteo o rechazar una emisión no autorizada) es indispensable para asegurar la confiabilidad operativa del protocolo.

**Por qué el resto va en ese orden:**

- La **#2** va en segundo lugar porque la validación previa off-chain en el cliente ahorra costos, tiempo y previene transacciones fallidas en escenarios con conectividad limitada.
- La **#3** es fundamental para la experiencia de usuario general: la visibilidad del estado del sistema (feedback continuo) es un principio básico de usabilidad y aseguramiento de calidad.
- La **#4** respalda la integridad del modelo de lotes atómicos (`emitir_lote`), validando que la consistencia matemática del contrato se mantenga libre de errores parciales.
- La **#5** y la **#6** facilitan el flujo de trabajo de QA durante las pruebas del MVP y optimizan la resiliencia en condiciones operativas complejas.
