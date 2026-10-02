# Daniel Alejandro Gallego — Historias de usuario (Fase 1, Semana 2)

**Usuario de GitHub:** `daniellGallego`

> Mis historias se enfocan en quien **consulta y verifica** un crédito sin ser parte de la compraventa: el ciudadano, la comunidad, el periodista y los auditores. Son quienes hoy no tienen cómo comprobar lo que dice el vendedor, como mostró el caso Pachamama Cumbal citado en nuestro Problem Brief.

## Mis historias de usuario

*Ordenadas de mayor a menor importancia.*

1. Como **auditor de la autoridad ambiental**, quiero ver en una línea de tiempo el historial completo de un crédito (emisión, cada transferencia y el retiro, con su fecha y su transacción), para comprobar que nunca se vendió ni se usó dos veces sin depender del registro de quien lo comercializa.
2. Como **ciudadano sin conocimientos de blockchain**, quiero consultar un crédito escribiendo su código o escaneando un código QR, sin instalar una billetera ni crear una cuenta, para saber en segundos si sigue vigente o si ya fue retirado.
3. Como **auditor de la empresa compradora**, quiero cargar el PDF del certificado en la página y que me diga si coincide con el registrado en la red, para detectar certificados alterados o falsos antes de presentarlos como evidencia.
4. Como **periodista o veedor ciudadano**, quiero que cada movimiento del historial tenga un enlace al explorador público de Stellar, para confirmar por mi cuenta que lo que muestra Verde Verificado coincide con la red y no es una pantalla manipulada.
5. Como **auditor de la autoridad ambiental**, quiero descargar el historial de un crédito en un archivo (PDF o CSV), para adjuntarlo como soporte en un informe de control.
6. Como **integrante de la comunidad donde está el proyecto forestal**, quiero ver cuántas toneladas se han emitido y cuántas se han retirado, para saber si los créditos generados en mi territorio se están usando de verdad.

## La más importante y por qué

**#1 — Ver el historial completo del crédito.** El problema que eligió el equipo no es solo saber el estado de un crédito *hoy*, sino poder demostrar su historia completa: cuándo se emitió, quién lo tuvo y si ya se retiró. El caso Pachamama Cumbal lo muestra: un proyecto suspendido seguía apareciendo como activo y se canjearon casi 400.000 créditos, porque nadie por fuera del estándar podía ver la secuencia real de movimientos. Si el auditor ve esa línea de tiempo, escrita en una red que nadie puede editar, el doble conteo se vuelve evidente sin pedirle permiso a nadie. Además, ya es viable en el MVP: el contrato expone la función `historial_credito`, así que la tarea de la interfaz es mostrarla de forma clara.

**Por qué el resto va en ese orden:**

- La **#2** va segunda porque, sin una consulta simple, el historial solo lo vería quien sabe usar herramientas técnicas.
- La **#3** y la **#4** refuerzan la confianza: una valida el documento y la otra valida la propia plataforma.
- La **#5** y la **#6** aportan valor, pero dependen de que las anteriores ya existan.
