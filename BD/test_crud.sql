-- Creación de tablas mínimas 

CREATE TABLE categoria (
  id UUID PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE producto (
  id UUID PRIMARY KEY,
  id_categoria UUID REFERENCES categoria(id),
  nombre VARCHAR(120) NOT NULL,
  descripcion TEXT,
  precio NUMERIC(10,2) NOT NULL,
  activo BOOLEAN DEFAULT TRUE
);

CREATE TYPE estado_pedido AS ENUM ('recibido','preparando','listo','entregado','cancelado');

CREATE TABLE pedido (
  id UUID PRIMARY KEY,
  fecha TIMESTAMP NOT NULL DEFAULT now(),
  estado estado_pedido NOT NULL DEFAULT 'recibido',
  total NUMERIC(10,2) NOT NULL
);

CREATE TABLE pedido_item (
  id UUID PRIMARY KEY,
  id_pedido UUID REFERENCES pedido(id),
  id_producto UUID REFERENCES producto(id),
  cantidad INT NOT NULL,
  precio_unitario NUMERIC(10,2) NOT NULL
);

-- Datos de prueba 

-- Categorías
INSERT INTO categoria (id, nombre) VALUES
  ('11111111-1111-1111-1111-111111111111', 'Pastas'),
  ('22222222-2222-2222-2222-222222222222', 'Ensaladas');

-- Productos
INSERT INTO producto (id, id_categoria, nombre, descripcion, precio)
VALUES
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 'Lasagna Casera', 'Salsa boloñesa y ricotta', 6990),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', 'Ensalada Quinoa', 'Quinoa, palta, tomate', 5990);

-- Pedido
INSERT INTO pedido (id, total)
VALUES ('p0010000-0000-0000-0000-000000000001', 12980);

-- Items
INSERT INTO pedido_item (id, id_pedido, id_producto, cantidad, precio_unitario)
VALUES
  ('it001000-0000-0000-0000-000000000001', 'p0010000-0000-0000-0000-000000000001', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 1, 6990),
  ('it002000-0000-0000-0000-000000000001', 'p0010000-0000-0000-0000-000000000001', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 1, 5990);

-- Pruebas CRUD 

-- CREATE: nuevo producto
INSERT INTO producto (id, id_categoria, nombre, descripcion, precio)
VALUES ('cccccccc-cccc-cccc-cccc-cccccccccccc', '11111111-1111-1111-1111-111111111111', 'Ravioles de espinaca', 'Con salsa pomodoro', 7500);

-- READ: consultar productos activos
SELECT id, nombre, precio FROM producto WHERE activo = true;

-- UPDATE: cambiar estado de pedido
UPDATE pedido SET estado='preparando'
WHERE id='p0010000-0000-0000-0000-000000000001';

-- DELETE (soft): desactivar producto
UPDATE producto SET activo=false
WHERE id='bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb';

-- Crear cliente
INSERT INTO cliente (id, nombre, email, telefono, direccion)
VALUES ('c1111111-1111-1111-1111-111111111111','Juan Pérez','juan@correo.com','+56911111111','Centro 123');

-- Crear pedido + items
INSERT INTO pedido (id, id_cliente, total)
VALUES ('p0010000-0000-0000-0000-000000000001','c1111111-1111-1111-1111-111111111111',12980);

INSERT INTO pedido_item (id, id_pedido, id_producto, cantidad, precio_unitario)
VALUES 
('it-1','p0010000-0000-0000-0000-000000000001','aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa',1,6990),
('it-2','p0010000-0000-0000-0000-000000000001','bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb',1,5990);

-- Leer pedido
SELECT id, fecha, estado, total FROM pedido WHERE id='p0010000-0000-0000-0000-000000000001';

-- Actualizar estado
UPDATE pedido SET estado='preparando' WHERE id='p0010000-0000-0000-0000-000000000001';

-- Pago aprobado (idempotencia por txn_id)
INSERT INTO pago (id, id_pedido, proveedor, txn_id, monto, estado)
VALUES ('pay-1','p0010000-0000-0000-0000-000000000001','WebPay','TXN-123',12980,'aprobado');

-- Intento duplicado (debe fallar por UNIQUE)
-- INSERT INTO pago (id, id_pedido, proveedor, txn_id, monto, estado)
-- VALUES ('pay-dup','p0010000-0000-0000-0000-000000000001','WebPay','TXN-123',12980,'aprobado');

-- Desactivar producto (soft delete)
UPDATE producto SET activo=false WHERE id='bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb';

