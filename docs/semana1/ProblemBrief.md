# Problem Brief — Verde Verificado

## Decisión del problema

### Problema elegido

Los pequeños proyectos de conservación y reforestación en Colombia no pueden demostrar de forma confiable y barata que sus créditos de carbono existen, son únicos y no se han vendido dos veces, por lo que quedan por fuera del mercado o venden a precios castigados.

**Propuesto por:** José Luis Olaya.

### Por qué elegimos este

Elegimos este problema porque cumple con claridad dos de los criterios de la Sesión 1:

1. **Varias partes que no confían entre sí necesitan compartir un mismo registro.** El proyecto, el verificador, el estándar certificador, el comprador y la autoridad ambiental consultan hoy registros distintos, cada uno controlado por un actor diferente.
2. **El histórico no puede alterarse.** El valor de un crédito de carbono depende de poder demostrar su historia completa: cuándo se emitió, quién lo compró y si ya se retiró o suspendió.

Además, a diferencia de las otras propuestas, este problema tiene **evidencia pública reciente en Colombia** (investigación *Carbono Opaco* de El Clip) y un **contexto regulatorio activo** (Decreto 973 de 2026), lo que facilita validarlo con fuentes verificables durante las cinco semanas del curso.

Asimismo, en la discusión del equipo pesó el gran interés conjunto en el impacto ambiental y social para comunidades rurales, así como la viabilidad técnica de implementar el registro y la inmutabilidad de los estados mediante contratos inteligentes en Soroban (Stellar), ajustándose de manera realista a los plazos del MVP.

### Propuestas descartadas

| Propuesta | Propuesta por | Motivo del descarte |
|---|---|---|
| Natillera sin tesorero: grupos de ahorro que dependen de un tesorero y un cuaderno | Daniel Gallego | Problema real, pero de bajo valor económico por grupo y con adopción incierta de billeteras digitales por parte de los socios. |
| Fondo rotatorio de asociaciones campesinas: los asociados no ven el estado del fondo ni el uso de los créditos | Daniel Gallego | Depende de conseguir una asociación piloto con fondo activo y de la conectividad en veredas, difícil de validar en cinco semanas. |
| Verificación independiente del consumo de energía frente a lo facturado | Emir Aristigueta | Requiere hardware IoT (medidores) y validez regulatoria para la facturación, fuera del alcance de un MVP de cinco semanas. |
| BonoChain: emisión, transferencia y redención de bonos digitales para pequeños comercios | Lina Kallejas | Riesgo de adopción y viabilidad comercial: los comercios usan soluciones tradicionales (POS, Excel) y no se demostró disposición a pagar ni un diferencial claro con blockchain. |

### Cómo tomamos la decisión

El equipo se reunió el miércoles 23 a las 8:00 p. m. a través de Google Meet para debatir y analizar todas las propuestas presentadas. Tras evaluar cada alternativa y sus implicaciones frente a los criterios del curso, la decisión final de seleccionar este problema fue tomada por todos los integrantes con una decisión unánime.

---

## Problem Brief

### Encabezado

**Verde Verificado**

Hoy un comprador no puede comprobar por sí mismo si un crédito de carbono sigue vigente o si ya fue vendido, retirado o suspendido, y los pequeños proyectos que los generan pierden valor frente a los intermediarios que controlan esa información.

### Equipo y roles

| Integrante | Usuario de GitHub | Rol |
|---|---|---|
| José Luis Olaya | `emprendamosahora2030-sudo` | Negocio y presentación del proyecto |
| Emir  | `emirdev1` | Desarrollo: contrato en Soroban y pantalla de compra |
| Daniel Alejandro Gallego | `daniellGallego` | Desarrollo de software: apoyo en la construcción técnica |
| Lina Kallejas | `LinaKallejas` | Gestión del equipo y QA |

- **Responsable de las entregas en Apex:** `Emir Aristigueta`
- **Canal de coordinación interna:** `Whatsapp`

### Problema y evidencia

**Enunciado:** los pequeños proyectos de conservación y reforestación no pueden demostrar de forma confiable y barata que sus créditos de carbono existen, son únicos y no se han vendido dos veces.

**Contexto:** en Colombia, un crédito de carbono pasa por varios registros: el registro nacional (RENARE), el registro privado del estándar que lo certifica (por ejemplo Cercarbono, ColCX o Verra) y los registros internos de quienes lo comercializan. Estos registros no siempre se cruzan ni se actualizan al mismo tiempo, y el comprador depende de la palabra de quien le vende.

**Frecuencia y alcance:** el problema aparece en cada compraventa y en cada retiro de créditos. Afecta tanto a los proyectos pequeños, que no pueden pagar la misma estructura de verificación que uno grande, como a las empresas que compran créditos para compensar emisiones o para no causar el impuesto al carbono. Según el *Informe sobre el Estado Actual del Mercado Colombiano de Carbono* (cierre a junio de 2025), la demanda total en Colombia acumula más de 332 millones de toneladas de CO₂e, con un promedio anual reciente de 42,3 millones de ton CO₂e. De este volumen, más de 130 millones de ton CO₂e (39,2%) se han canalizado mediante el mecanismo de no causación del impuesto al carbono. Asimismo, a junio de 2025 existen 244 proyectos certificados activos y una emisión post-2020 de 89,2 millones de créditos de carbono (donde el 83% corresponde a los sectores forestales: 67% REDD+ y 16% Forestación/Reforestación), evidenciando el volumen masivo de transacciones cuyo valor depende de la integridad de los registros.

**Evidencia:**

- La investigación *Carbono Opaco* de El Clip documentó el caso del proyecto Pachamama Cumbal (Nariño): un juez lo suspendió en julio de 2023 y, aun así, entre junio y agosto de 2024 se canjearon casi 400.000 créditos, de los cuales 289.000 los usó Chevron para compensar el impuesto al carbono. El proyecto seguía apareciendo como activo en la plataforma del estándar, sin indicar la suspensión ([El Clip](https://www.elclip.org/proyecto-carbono-suspendido-sigue-transando-bonos-e-incumple-fallo-judicial/)).
- El Decreto 973 del 4 de agosto de 2026 reglamentó los mercados de carbono en Colombia, con reglas de registro, monitoreo, reporte y verificación, y articulación con RENARE ([Estrategia Ambiental](https://www.estrategiaambiental.com/2026/08/24/decreto-973-de-2026-mercados-de-carbono-en-colombia/)).

### Usuario y actores

**Usuario principal:** el pequeño proyecto de conservación o reforestación (una asociación campesina, una comunidad o un pequeño propietario) que genera créditos de carbono y quiere venderlos a un precio justo.

**Qué necesita resolver:** demostrar ante cualquier comprador que su crédito es real, único y vigente, sin depender de un intermediario que concentre esa información.

**Cómo lo resuelve hoy y qué le cuesta:**

- **Dinero:** paga la formulación del proyecto, la validación, las verificaciones periódicas y la inscripción en un estándar certificador. Además, cuando vende a través de un desarrollador o intermediario, este se queda con una parte del valor. 
- **Tiempo:** pueden pasar meses entre la reducción real de emisiones y el momento en que el crédito se puede vender.
- **Esfuerzo:** depende de terceros para demostrar la validez de su crédito y no controla la relación con el comprador.

**Otros actores:**

| Actor | Papel en el flujo |
|---|---|
| Desarrollador o intermediario | Formula el proyecto, lo lleva al estándar y comercializa los créditos |
| Organismo de validación y verificación (acreditado por ONAC) | Valida el proyecto y verifica las reducciones de emisiones |
| Estándar o programa de certificación | Registra el proyecto y emite los créditos en su propio registro |
| RENARE / Ministerio de Ambiente | Registro nacional y autoridad que regula el mercado |
| Empresa compradora | Compra créditos para compensar emisiones o no causar el impuesto al carbono |
| RIA u otras entidades departamentales | Posibles aliados que desarrollan proyectos de reforestación 
### Flujo actual de valor

Recorrido de un crédito de carbono desde el proyecto hasta el comprador.

1. **Formulación.** El proyecto, casi siempre con un desarrollador o intermediario, elabora el documento de diseño del proyecto (PDD).
2. **Registro nacional.** El proyecto se inscribe en RENARE.
3. **Validación .** Un organismo de validación y verificación acreditado por ONAC revisa que el proyecto cumpla con la metodología.
4. **Registro en un estándar.** El proyecto se inscribe en un programa de certificación (por ejemplo Cercarbono, ColCX o Verra), que tiene su propio registro privado.
5. **Monitoreo y verificación.** El proyecto mide sus reducciones y un organismo acreditado las verifica periódicamente.
6. **Emisión.** El estándar emite los créditos en su registro, uno por cada tonelada de CO₂ equivalente verificada.
7. **Venta.** El intermediario vende los créditos a la empresa compradora y concentra la información de precio y estado.
8. **Retiro.** El comprador retira (cancela) el crédito para compensar sus emisiones. Si lo usa para no causar el impuesto al carbono, debe cumplir el procedimiento de no causación.

**Intermediarios explícitos:** el desarrollador o intermediario (pasos 1 y 7), el organismo verificador (pasos 3 y 5) y el estándar certificador (pasos 4 y 6).


### Fricciones identificadas

| # | Fricción | Paso | Causa | A quién afecta |
|---|---|---|---|---|
| 1 | **Registros que no se cruzan** | 2, 4 y 6 | RENARE y los registros de cada estándar son sistemas separados, controlados por actores distintos | Compradores y autoridad: riesgo de doble conteo o doble venta |
| 2 | **El estado del crédito no se actualiza** | 6 a 8 | Una suspensión o un retiro no se refleja a tiempo ni en todos los registros (caso Pachamama Cumbal) | Compradores que usan créditos inválidos; comunidades afectadas |
| 3 | **Información concentrada en el intermediario** | 7 | El intermediario controla la relación con el comprador y la información de precio | Pequeños proyectos, que reciben una parte menor del valor |
| 4 | **Verificación cara para proyectos pequeños** | 3 y 5 | Los costos de validación y verificación son parecidos para un proyecto pequeño y uno grande | Pequeños proyectos, que quedan por fuera del mercado |


### Oportunidad e hipótesis

**Oportunidad priorizada:** las fricciones 1 y 2, es decir, que **el estado de un crédito (emitido, vendido, retirado o suspendido) no es visible ni consistente para todas las partes**.

**Por qué la elegimos:** es la fricción que explica el caso de evidencia más fuerte (Pachamama Cumbal), afecta al mismo tiempo al vendedor y al comprador, y es la que una solución tecnológica puede mejorar dentro de las cinco semanas del curso. Las fricciones 3 y 4 dependen también de costos de auditoría y de regulación, que no se resuelven solo con tecnología.

**Hipótesis inicial (no certeza):** si cada crédito verificado se representa como un registro único en una red compartida, que solo puede crear el emisor autorizado y cuyo estado (emitido, vendido, retirado, suspendido) queda guardado de forma permanente, entonces:

- **El comprador** podría comprobar en segundos, sin depender de la palabra del vendedor, que el crédito no está vendido, retirado ni suspendido.
- **El pequeño proyecto** podría mostrar el historial completo de sus créditos a cualquier comprador, y negociar con menos dependencia del intermediario.
- **Dentro del sistema**, un mismo crédito no podría venderse dos veces.

**Lo que la hipótesis NO promete:** comprobar que el árbol existe y sigue en pie. Esa verificación física la sigue haciendo el organismo verificador; el sistema solo registra de forma confiable lo que ese emisor autorizado reporta.

### Criterio de pertinencia

**¿Por qué no basta una base de datos tradicional?** Porque alguien tendría que administrarla, y ese administrador se convertiría en el nuevo intermediario que concentra la confianza. En este mercado ninguna de las partes (proyecto, intermediario, estándar, comprador, autoridad) está dispuesta a que otra controle el registro del que depende el valor de su crédito.

**¿Por qué no basta integrar los sistemas existentes?** Porque cada estándar controla su propio registro y no tiene incentivos para cruzarlo con los de sus competidores. Además, una integración no impide que el dueño de cada registro modifique o retrase la actualización de su información, como se vio en el caso Pachamama Cumbal.

**Criterios de la Sesión 1 que aplican:**

1. **Varias partes que no confían entre sí necesitan compartir un mismo registro:** proyecto, verificador, comprador y autoridad consultarían la misma fuente.
2. **El histórico no puede alterarse:** cada emisión, venta, retiro o suspensión queda registrada de forma permanente, ni siquiera quien la creó puede borrarla.
3. **Se elimina el intermediario que concentra la información** (no el verificador, que es una obligación normativa).

**El riesgo que reconocemos:** si el sistema funciona como "un registro más" al lado de RENARE y de los estándares, podría empeorar el doble conteo en lugar de resolverlo. Por eso el diseño debe garantizar que el token solo se emita con la firma del emisor autorizado y que el crédito original quede bloqueado o retirado en su registro de origen. Ese problema ya lo vivió el mercado: en 2022 Verra prohibió tokenizar créditos retirados después de los casos de Toucan y KlimaDAO ([Verra](https://verra.org/verra-addresses-crypto-instruments-and-tokens/)).

### Supuestos y riesgos

**Supuesto 1: un emisor autorizado acepta firmar los registros.** Para que el sistema sea confiable, el estándar certificador, el verificador o el propio proyecto (respaldado por su verificación) debe ser quien cree cada token. *Lo invalidaría:* que ningún emisor autorizado quiera participar. En ese caso los datos de la red no serían más confiables que los de cualquier otra fuente. Es el llamado problema del oráculo: la red no sabe qué pasa en el mundo físico, solo guarda lo que alguien le reporta.

**Supuesto 2: los compradores valoran la verificación pública.** Suponemos que las empresas que compran créditos, sobre todo las que los usan para no causar el impuesto al carbono, prefieren créditos cuyo estado puedan comprobar por sí mismas. *Lo invalidaría:* que para el comprador sea suficiente el certificado del estándar y no esté dispuesto a usar una herramienta adicional.

**Supuesto 3: el marco regulatorio se mantiene y permite el modelo.** El Decreto 973 de 2026 le da al Ministerio de Ambiente la coordinación del mercado y la articulación con RENARE. *Lo invalidaría:* que se revierta o cambie. Según La Silla Vacía, el decreto se expidió un día antes del cambio de gobierno y el ministro entrante anunció que lo echaría para atrás ([La Silla Vacía](https://www.lasillavacia.com/en-vivo/un-dia-antes-de-irse-gobierno-reglamenta-mercado-de-bonos-de-carbono/)). También lo invalidaría que los estándares prohíban representar sus créditos en otras redes, como ya hizo Verra con los créditos retirados.

**Fuera del alcance de este MVP:** la verificación física de los árboles, el caso de uso de turismo y el módulo de estimación de créditos con inteligencia artificial.

---

## Fuentes consultadas

- El Clip, "El proyecto de carbono suspendido que sigue transando bonos e incumple fallo judicial" (investigación *Carbono Opaco*): https://www.elclip.org/proyecto-carbono-suspendido-sigue-transando-bonos-e-incumple-fallo-judicial/
- El Clip, especial *Carbono Opaco*: https://www.elclip.org/carbono-opaco/
- Estrategia Ambiental, "Decreto 973 de 2026 – Mercados de carbono en Colombia": https://www.estrategiaambiental.com/2026/08/24/decreto-973-de-2026-mercados-de-carbono-en-colombia/
- La Silla Vacía, "Un día antes de irse, gobierno reglamenta mercado de bonos de carbono": https://www.lasillavacia.com/en-vivo/un-dia-antes-de-irse-gobierno-reglamenta-mercado-de-bonos-de-carbono/
- Ministerio de Ambiente, "Contexto Mercados de Carbono": https://www.minambiente.gov.co/mercados-de-carbono/contexto-mercados-de-carbono/
- Verra, "Verra Addresses Crypto Instruments and Tokens": https://verra.org/verra-addresses-crypto-instruments-and-tokens/
- Propuesta individual de José Luis Olaya: `docs/semana1/JoseLuisOlaya.md`


## Herramientas de asistencia

Para la investigación, estructuración, redacción y coordinación de este documento, el equipo utilizó las siguientes herramientas de asistencia:

- **Antigravity:** entorno de trabajo y agente de desarrollo utilizado para la generación, iteración y edición del brief.
- **Gemini:** estructuración del proyecto, análisis de requerimientos y refinamiento de contenidos del brief.
- **Claude:** apoyo en la síntesis, estructuración y redacción inicial a partir de las propuestas individuales del equipo.
- **Perplexity:** búsqueda e investigación profunda de fuentes públicas, reportes de mercado y contexto regulatorio.
- **NotebookLM (Gemini):** fuente de conocimiento y análisis para la síntesis de documentos, notas y consulta de la información del proyecto.
- **Google Meet:** plataforma para las sesiones sincrónicas de debate y toma de decisiones del equipo.
- **WhatsApp:** canal de comunicación interna y coordinación rápida del equipo. 
