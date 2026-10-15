# MVP funcional — Verde Verificado

## Evidencias verificables

- **Producto en línea:** https://verde-verificado-app-emprendamosahora2030-5355s-projects.vercel.app
- **Video demo + pitch (≤ 3 min):** [PEGAR AQUÍ EL ENLACE PÚBLICO DEL VIDEO]
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

**Usuarios objetivo.** (a) Verificadores y emisores de créditos de carbono, que necesitan registrar y transferir créditos sin duplicidad; (b) empresas compradoras, que necesitan comprobar que un crédito es único y retirarlo a su nombre; (c) entidades públicas o ambientales que consultan el registro.

**Hipótesis a validar.** Un registro con historial público y certificado verificable reduce el tiempo y la desconfianza al comprobar un crédito, frente a hojas de cálculo y PDF enviados por correo.

**Cómo lo haremos.** Entre las semanas 5 y 6 realizaremos entre 5 y 8 entrevistas de 20 minutos con personas de los tres perfiles: verificadores, compradores corporativos y funcionarios ambientales. En cada sesión mostraremos el producto en línea y pediremos que ejecuten una tarea sin ayuda: consultar un crédito, verificar un PDF y retirar un crédito de demostración.

**Qué mediremos.** Porcentaje de personas que completan cada tarea sin ayuda; tiempo para completarla; punto exacto donde dudan o se equivocan (en especial la firma con Freighter); y una pregunta final: "¿qué necesitaría para usar esto con un crédito real?".

**Criterio de éxito.** Al menos 4 de cada 5 participantes completan consultar y verificar sin ayuda, y al menos la mitad identifica el certificado como prueba suficiente de unicidad.

**Qué haremos con los resultados.** Priorizaremos los tres ajustes con más fricción, corregiremos el flujo de firma y registraremos las respuestas en el repositorio. Si dos o más verificadores muestran interés, avanzaremos a una prueba piloto con un solo proyecto, previa auditoría del contrato.
