# MVP funcional — Verde Verificado

## Evidencias verificables

- **Producto en línea:** https://verde-verificado-app-emprendamosahora2030-5355s-projects.vercel.app
- **Video demo + pitch (≤ 3 min):** [Pendiente de publicar (depende de la landing del grupo, en elaboración)]
- **Contrato inteligente (Soroban, testnet):** https://stellar.expert/explorer/testnet/contract/CC7ZF3ZK7PGLKZXQASAROTT6WPXRYFP5PV2BQSSUEMEO7VXWE5JKDMLI
- **Transacciones testnet del ciclo de vida del crédito VV001** (1 oct 2026, UTC):
  - Emisión (`emitido VV001`, 20:22:12): [PEGAR ENLACE stellar.expert/explorer/testnet/tx/…]
  - Transferencia (`transferido VV001`, 20:22:17): [PEGAR ENLACE stellar.expert/explorer/testnet/tx/…]
  - Retiro (`retirado VV001`, 20:22:22, beneficiario EMPRESAS_DEMO): [PEGAR ENLACE stellar.expert/explorer/testnet/tx/…]
- **Repositorio:** https://github.com/emprendamosahora2030-sudo/verde-verificado

## 1. Aprendizajes y ajustes priorizados

Retomamos la decisión del Entregable 3: contrato propio en Soroban en lugar de depender de un contrato de terceros. Esa decisión nos dio control total del ciclo de vida del crédito (Emitido → Transferido → Retirado) y nos permitió demostrarlo de punta a punta en testnet con el crédito VV001.

Aprendimos tres cosas. Primero, la firma con Freighter es el punto de mayor fricción: un usuario sin experiencia no entiende por qué debe aprobar cada operación, así que priorizamos mensajes claros en cada estado (conectando, firmando, enviando, confirmado, error). Segundo, los errores del contrato deben traducirse a lenguaje humano; "crédito ya retirado" es útil, un código numérico no. Tercero, el certificado verificable (hash del documento) es lo que más confianza genera en quien compra, por lo que lo mantuvimos como pantalla propia.

Ajustes priorizados: (1) conectar el front con el contrato propio para emitir, transferir y retirar; (2) mostrar el historial de cada crédito con enlace al explorador; (3) simplificar el flujo a las seis pantallas esenciales: consultar, verificar PDF, emitir, transferir, retirar y certificado. Dejamos fuera paneles de administración y reportes avanzados hasta validar el flujo central con usuarios reales.

## 2. Riesgos y pendientes

**Técnicos.** El contrato opera solo en testnet y no ha tenido auditoría externa; no debe manejar créditos reales hasta que la tenga. La versión del SDK de Soroban debe migrarse y probarse antes de cualquier despliegue en mainnet. Además, falta repetir el ciclo completo de emisión, transferencia y retiro desde el front con Freighter esta semana, para dejar evidencia actualizada y no depender solo de la prueba del 1 de octubre.

**De gobernanza.** La administración del contrato depende hoy de una sola cuenta. Antes de producción necesitamos un esquema con varios firmantes y un procedimiento claro para autorizar a los verificadores que pueden emitir. Sin esto, la confianza en los créditos descansa en una sola persona.

**De negocio y regulación.** Los créditos registrados son de demostración; no representan toneladas reales de CO₂. Para operar con proyectos reales se necesita validación por un organismo de verificación acreditado y alineación con el estándar de carbono aplicable. Aún no hay acuerdos firmados con verificadores ni compradores.

**De equipo.** El equipo se redujo durante el curso y el tiempo restante es corto. Mitigamos con alcance mínimo, tareas repartidas por persona y un commit individual de cada integrante esta semana.

**Pendientes inmediatos:** repetir la prueba end-to-end con Freighter, grabar y publicar el video, actualizar la tabla de participación y subir el repositorio a Apex antes del plazo.

## 3. Plan de validación con usuarios

**A quién.** Cinco personas por cada perfil de usuario: (a) verificadores o desarrolladores de proyectos de carbono, (b) empresas compradoras y (c) funcionarios ambientales. Se contactan por la red del equipo, en sesiones de 20 minutos por videollamada, con permiso por escrito y sin guardar datos personales de más.

**Hipótesis (umbrales fijados antes de ver resultados).**
1. Creemos que una empresa compradora consultará el historial de un crédito antes de comprarlo, porque hoy se fía del vendedor. Lo sabremos si 4 de 5 consultan un crédito de prueba sin que se les pida.
2. Creemos que un verificador emitirá un crédito desde su cuenta sin ayuda. Lo sabremos si 4 de 5 completan la emisión con Freighter en menos de 5 minutos.
3. Creemos que un funcionario ambiental comprobará un certificado PDF contra el hash registrado. Lo sabremos si 3 de 5 lo logran sin ayuda.

**Cómo se observa.** La tarea es un escenario, no una instrucción: "Te llega un crédito de un proveedor y decides si lo compras". En cada sesión, una persona dirige y otra anota, y nadie ayuda ni señala botones. Se pregunta por hechos del pasado ("cuéntame de la última vez que verificaste un crédito"), no por opiniones sobre el producto.

**Qué se registra.** Tarea completada (sí o no), tiempo, errores de firma y el punto exacto donde la persona se traba, con la observación separada de la interpretación. Cada fricción se prioriza por gravedad, frecuencia y esfuerzo de arreglo.

**Decisión.** Si una hipótesis no alcanza su umbral, se corrige primero el paso con más fricción (probablemente la firma) y se repite con nuevas personas. Si se cumple la primera, el siguiente paso es un piloto con un proyecto real, previa auditoría del contrato.
