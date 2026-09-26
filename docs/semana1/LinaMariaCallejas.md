BONOCHAIN

Bonos digitales con identidad y trazabilidad verificable
Propuesta de Producto Mínimo Viable (MVP)
Proyecto académico de Blockchain sobre Stellar y Soroban
 
1. Resumen Ejecutivo

BonoChain es una propuesta de solución tecnológica dirigida inicialmente a pequeños comercios que ofrecen bonos de regalo o bonos de consumo. El proyecto busca facilitar la emisión, transferencia y redención de estos bonos mediante activos digitales con identidad y trazabilidad verificables.
La hipótesis central es que, cuando un bono necesita ser transferido y su estado debe ser verificado durante todo su ciclo de vida, blockchain puede aportar valor al proporcionar un registro de movimientos verificable y reglas de negocio ejecutables mediante contratos inteligentes.
El MVP se desarrollará sobre Stellar Testnet. Stellar permitirá trabajar con cuentas, activos, wallets, firmas y transacciones; Soroban se utilizará para implementar las reglas de negocio relacionadas con el estado y la redención del bono.

















2. El Problema
Los pequeños comercios que venden bonos de regalo o bonos de consumo suelen gestionarlos mediante tarjetas físicas, códigos, hojas de cálculo, mensajes o registros internos. Estos mecanismos pueden dificultar el control del ciclo de vida de cada bono cuando aumenta el número de operaciones o cuando el bono cambia de propietario.
El problema central es:
“Los comercios necesitan una forma sencilla y confiable de identificar, transferir y controlar el estado de cada bono durante todo su ciclo de vida.”


3. Quién Tiene El Problema
El usuario principal del MVP será un pequeño comercio, por ejemplo una cafetería, que ofrece bonos de consumo de valor fijo.
También intervienen los clientes que adquieren o reciben los bonos.
•	Comercio: emite, administra y redime los bonos.
•	Cliente A: adquiere o recibe un bono.
•	Cliente B: puede recibir un bono transferido.
•	Comercio y cliente: necesitan consultar el estado y el historial del bono.


4. ¿Cómo se resuelve hoy y qué cuesta?
Actualmente un comercio puede gestionar sus bonos mediante tarjetas físicas, códigos únicos, hojas de cálculo, bases de datos o sistemas internos. Estas alternativas pueden ser suficientes para operaciones pequeñas, pero pueden generar dificultades a medida que aumenta el número de bonos o se requiere transferirlos y consultar su historial.





Situación	Costo o dificultad
Gestión manual	Tiempo dedicado a registrar, consultar y actualizar el estado de los bonos.
Errores de registro	Diferencias entre bonos emitidos, transferidos y redimidos.
Transferencias	Necesidad de modificar o verificar manualmente el propietario del bono.
Verificación	El cliente depende del comercio para conocer el estado del bono.
Control de redención	Riesgo de inconsistencias si un bono ya utilizado vuelve a presentarse.

5. ¿Por qué blockchain podría aportar?
La hipótesis del proyecto es que blockchain puede aportar valor cuando el bono se representa como un activo digital con identidad, propietario, estado e historial de movimientos verificable.
En BonoChain, el ciclo de vida del activo será representado mediante eventos como:
EMISIÓN  →  TRANSFERENCIA  →  RECEPCIÓN  →  REDENCIÓN
Adicionalmente, un contrato inteligente en Soroban podrá aplicar una regla de negocio crítica: un bono que ya fue redimido no podrá volver a ser redimido.
La propuesta no parte de la premisa de que blockchain siempre sea mejor que una base de datos. La validación del proyecto deberá determinar si la identidad digital, la trazabilidad y las reglas verificables generan un beneficio suficiente frente a una solución tradicional.

6. Propuesta de valor
BonoChain permite a pequeños comercios emitir y gestionar bonos digitales con identidad y trazabilidad verificables, facilitando su transferencia y controlando su redención mediante reglas automatizadas.


Beneficios esperados
•	Para el comercio: mayor control del ciclo de vida de los bonos y reducción de parte de la gestión manual.
•	Para el cliente: consulta del estado, propietario e historial del bono.
•	Para ambos: mayor trazabilidad de las operaciones realizadas sobre el activo digital.

7. Usuario objetivo y caso de uso del MVP
Para mantener un alcance realista, el MVP se enfocará en un único escenario: una cafetería o pequeño comercio que emite bonos digitales de consumo de valor fijo.
Ejemplo: Café Central ofrece un bono digital de consumo por $50.000. El cliente puede recibirlo, consultar su estado, transferirlo a otra persona y finalmente utilizarlo una sola vez.

8. Flujo principal del usuario
1.	El comercio crea un bono de valor fijo.
2.	El sistema genera o registra el activo digital.
3.	El cliente recibe el bono en su wallet.
4.	El cliente consulta el valor y estado del bono.
5.	El cliente puede transferir el bono a otra cuenta.
6.	El nuevo propietario recibe el bono.
7.	El cliente utiliza el bono en el comercio.
8.	El contrato inteligente valida que el bono esté disponible.
9.	El bono cambia a estado REDIMIDO.
10.	Un segundo intento de redención es rechazado.

9. Alcance del Producto Mínimo Viable
Funcionalidades incluidas
•	Crear y emitir bonos de valor fijo.
•	Conectar o utilizar una wallet de prueba.
•	Recibir un bono.
•	Consultar valor y estado.
•	Transferir el bono entre cuentas.
•	Consultar historial de movimientos.
•	Redimir el bono.
•	Impedir una segunda redención.
•	Consultar la transacción correspondiente en Stellar Testnet.
Fuera del alcance del MVP
•	Pagos con dinero real o integración bancaria.
•	Conversión de bonos a pesos colombianos.
•	Aplicación móvil nativa.
•	Integración con sistemas POS.
•	Facturación electrónica.
•	Múltiples comercios en producción.
•	Mercado secundario de bonos.
•	Procesos regulatorios o KYC.

10. Arquitectura Tecnológica Propuesta

Componente	Tecnología	Responsabilidad
Interfaz	Aplicación web	Crear, consultar, transferir y redimir bonos.
Lógica de aplicación	JavaScript / TypeScript	Gestionar flujos y comunicación con la red.
Blockchain	Stellar Testnet	Cuentas, activos, firmas y transacciones.
Contratos inteligentes	Soroban	Reglas de estado y validación de redención.
Wallet	Wallet compatible con Testnet	Firmar y autorizar operaciones.

11. Modelo De Estados Del Bono

Estado	Descripción
EMITIDO	El comercio ha creado el bono.
DISPONIBLE	El bono puede ser utilizado o transferido.
TRANSFERIDO	El bono ha cambiado de propietario.
REDIMIDO	El bono ya fue utilizado y no puede volver a redimirse.




12. Historias de usuario prioritarias

ID	Historia de usuario
HU01	Como comercio, quiero crear un bono digital de valor determinado para ofrecerlo a mis clientes.
HU02	Como cliente, quiero recibir un bono en mi wallet para poder utilizarlo posteriormente.
HU03	Como cliente, quiero consultar el valor y estado de mi bono para saber si está disponible.
HU04	Como cliente, quiero transferir mi bono a otra persona.
HU05	Como cliente, quiero redimir mi bono en el comercio.
HU06	Como comercio, quiero impedir que un bono ya redimido vuelva a utilizarse.
HU07	Como comercio o cliente, quiero consultar el historial del bono para conocer sus movimientos.

13. Validación con usuarios
La validación buscará comprobar tanto la existencia del problema como la utilidad percibida de la solución y el aporte diferencial de blockchain.
Participantes
Entre 5 y 10 personas, priorizando pequeños comerciantes, emprendedores y personas con experiencia en la compra o uso de bonos.
Preguntas de validación
•	¿Cómo gestiona actualmente los bonos o tarjetas de regalo?
•	¿Qué dificultades tiene para saber cuáles están disponibles o ya fueron utilizados?
•	¿Qué información considera necesaria para validar un bono?
•	¿Qué tan útil sería consultar el historial de un bono?
•	¿Qué tan clara resulta la transferencia entre usuarios?
•	¿Considera que esta solución reduciría gestión manual?
•	¿En qué situaciones una solución basada en blockchain tendría valor frente a su mecanismo actual?





14. Indicadores de validación

Indicador	Medición propuesta
Comprensión	Porcentaje de usuarios que identifica correctamente el estado de un bono.
Usabilidad	Porcentaje de usuarios que completa el flujo de recepción, transferencia y redención sin asistencia.
Tiempo	Tiempo necesario para completar una transferencia o redención.
Trazabilidad	Porcentaje de usuarios que considera útil consultar el historial.
Valor diferencial	Percepción de si blockchain aporta un beneficio frente al mecanismo tradicional.

15. Modelo de negocio futuro
El modelo de negocio no forma parte del MVP, pero la solución podría evolucionar hacia un servicio para comercios bajo un modelo SaaS.
•	Suscripción mensual según número de bonos administrados.
•	Tarifa por emisión o redención.
•	Planes empresariales para cadenas de establecimientos.
•	Servicios de integración con POS y sistemas comerciales.

16. Riesgos y consideraciones
•	Una base de datos tradicional puede ser suficiente cuando un único comercio controla todo el proceso; esta hipótesis debe validarse.
•	Blockchain registra y protege el estado del activo digital, pero no garantiza por sí sola que el comercio tenga capacidad financiera para respaldar el bono.
•	La pérdida de acceso a una wallet puede afectar la experiencia del usuario y deberá resolverse en futuras versiones.
•	El MVP se ejecutará en Testnet y no representará dinero real.



17. Resultado esperado
Al finalizar el proyecto se espera contar con un prototipo funcional que permita demostrar el ciclo completo de un bono digital: emisión, recepción, transferencia, consulta de trazabilidad y redención, incluyendo una regla de contrato inteligente que impida la redención duplicada.
La demostración deberá permitir verificar las operaciones realizadas sobre Stellar Testnet y evidenciar qué funcionalidades corresponden a la infraestructura blockchain y cuáles pertenecen a la aplicación.








18. Resumen de la propuesta
BonoChain busca transformar el bono tradicional —un código, tarjeta o registro interno— en un activo digital con identidad, estado y trazabilidad verificables. El proyecto explorará si estas características generan un beneficio real para pequeños comercios frente a las alternativas tradicionales.
