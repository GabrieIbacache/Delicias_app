Definition of Done — Delicias MVP

## DoD general del proyecto
- Cumple los criterios de aceptación definidos para cada historia de usuario.
- Pantallas del MVP navegables en Figma y capturas guardadas en `/ui`.
- Documentación actualizada en `/docs` (ERS, Backlog, MVP, UML).
- Sin errores críticos de navegación en el prototipo.
- Accesibilidad mínima: contraste AA, botones táctiles ≥44 px, textos legibles.
- Validado con la stakeholder (Claudia) y registrado en Trello.

## DoD específico por historia de usuario

### HU1 — Ver menú
- Productos activos visibles con foto, nombre, precio y categoría.
- Filtro/búsqueda funcionando en el prototipo.
- Estado vacío claro si no hay productos.

### HU2 — Agregar productos al carrito
- Botón “agregar” funcional y total dinámico.
- Editar cantidad/eliminar ítems posible en el flujo.
- Persistencia mínima del carrito entre pantallas.
- Mensajes de error comprensibles.

### HU3 — Realizar pago
- Flujo de pago simulado con resultado aprobado/rechazado.
- Comprobante visible al finalizar pago aprobado.
- Pedido pasa a estado “recibido” en la vista del cliente.

### HU6 — Consultar estado del pedido
- Barra de progreso con estados: recibido → preparando → listo → entregado (o cancelado).
- ETA visible cuando exista y última actualización mostrada.

### HU10 — Cambiar estado del pedido (Admin)
- Admin puede cambiar estado en el orden correcto.
- Cambio reflejado de inmediato en la vista del cliente.
- Registro visual básico de quién/cuándo cambió estado.


- Criterios de aceptación de la HU cumplidos (medibles).
- Evidencias CRUD en /db; UML actualizado en /UML y /UML/src.
- Capturas Figma en /ui y link al prototipo.
- Documentado en README; validado con stakeholder.
