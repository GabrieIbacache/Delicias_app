# MVP — Delicias

## Propósito
Entregar la experiencia mínima para que el **cliente** pueda seleccionar productos, armar carrito, pagar de forma simulada y seguir el estado de su pedido, mientras el **administrador** puede cambiar estados.

El prototipo se entrega en Figma y capturas incluidas en `/docs/ui`.

- Prototipo: https://build-stone-02402811.figma.site

## Historias de Usuario incluidas
- HU1 — Ver menú
- HU2 — Agregar productos al carrito
- HU3 — Realizar pago
- HU6 — Consultar estado del pedido
- HU10 — Cambiar estado de pedido (Admin)

## Justificación de selección
Estas HU cubren el flujo crítico de compra y gestión de pedidos, permitiendo mostrar un producto usable y probar el núcleo del sistema sin abarcar funcionalidades adicionales como fidelización, promociones o métricas avanzadas.

## Criterios de aceptación resumidos

**HU1 — Ver menú**
- Lista de productos activos con foto, nombre, precio y categoría.
- Búsqueda y/o filtro por categoría.
- Estado vacío claro (“sin productos disponibles”).
- Accesibilidad mínima: contraste legible, botones ≥44px.

**HU2 — Carrito**
- Agregar y quitar ítems, editar cantidades y ver total dinámico.
- Persistencia del carrito mientras se navega.
- Mensajes de error claros (stock/cantidad).

**HU3 — Pago**
- Flujo con resultado aprobado o rechazado y mensajes comprensibles.
- Comprobante simulado visible tras aprobación.
- Pedido queda marcado como “recibido” si el pago es aprobado.

**HU6 — Estado del pedido**
- Barra de progreso: recibido → preparando → listo → entregado (o cancelado).
- ETA visible cuando exista y última actualización.

**HU10 — Cambiar estado (Admin)**
- Admin puede cambiar estado siguiendo flujo válido.
- Cambio se refleja en la vista del cliente.
- Registro visual básico de acción.

## Requisitos no funcionales (MVP)
- Usabilidad y accesibilidad: contraste AA, botones táctiles grandes, textos legibles.
- Claridad: mensajes de error y confirmación comprensibles.
- Navegación fluida en el prototipo sin bloqueos.

## Fuera de alcance del MVP
- Fidelización/puntos y promociones avanzadas.
- Reportes y métricas internas.
- Notificaciones push reales.

## Evidencias esperadas
- Link de Figma navegable y capturas de pantallas clave en `/docs/ui`.
- Tarjetas en Trello con criterios de aceptación marcados.
- README con enlaces al prototipo y a la documentación.
