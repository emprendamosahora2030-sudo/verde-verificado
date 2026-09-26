# Propuesta individual — Emir Aristigueta

## El problema
Los usuarios de servicios de energía y los administradores de subredes no pueden verificar de forma independiente su consumo histórico real frente a lo que se les cobra, lo que genera disputas constantes en las que una sola parte tiene el control total de los datos.

##¿Quién lo sufre?
- **Consumidores finales (residenciales y comerciales)** que dependen exclusivamente de la lectura reportada por la empresa proveedora de energía.
- **Administradores de co-propiedades o micro-redes** que deben dividir y cobrar el consumo interno a partir de sub-medidores, enfrentando constantes quejas y desconfianza de los vecinos.
- Lo viven en momentos específicos: cuando llega una factura con cobros inesperados o promediados, y al intentar presentar un reclamo, ya que carecen de un respaldo de datos propio que tenga validez técnica ante el proveedor.

## ¿Cómo se resuelve hoy y qué cuesta?
Hoy la recolección de datos depende de medidores (tradicionales o inteligentes) que envían la información a la base de datos centralizada y privada de la empresa de energía. Si un usuario no está de acuerdo, su única vía es iniciar un proceso formal de Peticiones, Quejas y Reclamos (PQR) y confiar en la auditoría interna de la misma empresa.
- **En dinero:** El usuario asume el pago de lecturas estimadas o inexactas mientras se resuelve el reclamo (para evitar el corte del servicio), o paga revisiones técnicas para comprobar que el medidor no está dañado.
- **En tiempo:** Los procesos de reclamación son burocráticos, requieren visitas presenciales y pueden tardar semanas o meses en resolverse.
- **En esfuerzo y confianza:** El consumidor está en desventaja tecnológica y legal frente a la empresa, creando una relación de fricción constante donde se asume que el usuario debe probar el error del sistema central.

## ¿Por qué creo que blockchain podría aportar?
**Hipótesis (no certeza):** Blockchain podría descentralizar el registro de las lecturas energéticas para crear una única fuente de verdad auditable. Me apoyo en dos criterios de la Sesión 1:
1. **Partes que no confían entre sí comparten un mismo registro:** Consumidores y proveedores tienen incentivos opuestos. Si los medidores inteligentes (IoT) registran las lecturas periódicas en una red compartida, ambas partes consultan el mismo dato inalterable para emitir o validar la factura, eliminando el monopolio de la información.
2. **El histórico no puede alterarse:** Si cada lectura queda registrada de forma permanente, el proveedor no puede modificar consumos retroactivamente en su base de datos para ajustar tarifas, ni el usuario puede manipular su historial para evadir pagos.

Lo planteo como hipótesis porque tengo dudas por resolver:
1. **La viabilidad técnica** de conectar infraestructura de medidores IoT directamente a una blockchain garantizando bajos costos de transacción (gas).
2. **La adopción regulatoria:** Si el marco normativo actual permite que este registro descentralizado tenga validez fiscal y legal para la facturación oficial.
