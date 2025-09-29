# Delicias — App de Delivery

Proyecto académico para la asignatura **Ingeniería de Software**.  
Permite que clientes realicen pedidos de comida, paguen en línea (simulado) y hagan seguimiento de su estado.  
Incluye vista de administrador para gestionar pedidos.

---

##  Estructura del repositorio

/docs
ERS_actualizado.pdf
Project_Burndown.pdf
Product_Backlog.pdf
MVP.md
DoD.md
test_crud.sql
/UML
casos_uso.png
actividades_cliente.png
actividades_admin.png
clases.png
modelo_de_base_de_datos.png
infraestructura_fisica.png
despliegue.png
/ui
links_figma.txt
menu.png
carrito.png
pago.png
estado.png
admin_pedidos.png
/db
modelo.sql
test_crud.sql
/seeds
categorias.csv
productos.csv

---

## Documentación clave

- **ERS actualizado:** [`/docs/ERS_actualizado.pdf`](./docs/ERS_actualizado.pdf)  
- **Product Backlog:** [`/docs/Product_Backlog.pdf`](./docs/Product_Backlog.pdf)  
- **MVP:** [`/docs/MVP.md`](./docs/MVP.md)  
- **Definition of Done:** [`/docs/DoD.md`](./docs/DoD.md)  
- **Pruebas CRUD:** [`/db/test_crud.sql`](./db/test_crud.sql)  
- **UML:** en `/UML` (Casos de uso, Actividades cliente/admin, Clases, Modelo de datos, Infraestructura, Despliegue)

---

## Prototipo UI

- **Prototipo navegable (Figma):** (https://build-stone-02402811.figma.site)  
- Capturas clave:  
  - `/ui/menu.png`
  - `/ui/carrito.png`
  - `/ui/pago.png`
  - `/ui/estado.png`
  - `/ui/admin_pedidos.png`

---

## Metodología de trabajo

- **Scrum adaptado:** sprints definidos, backlog priorizado y revisiones continuas.  
- **Herramientas:**  
  - GitHub para control de versiones y documentación.  
  - Trello para gestión de tareas y seguimiento de sprints.


Link Trello: https://trello.com/invite/b/68dac7e676ff3c95d757df99/ATTIb6d82813ef07c91f7be75ed4ea96d31956584183/delicias-app 

Link Github: https://github.com/GabrieIbacache/Delicias_app

---

## Cómo reproducir la base de datos (PostgreSQL)

1. Crear la base de datos `delicias` en tu servidor PostgreSQL.  
2. Ejecutar en tu terminal:

```bash
psql -U <usuario> -h <host> -d delicias -f db/modelo.sql
\COPY categoria FROM 'db/seeds/categorias.csv' CSV HEADER;
\COPY producto  FROM 'db/seeds/productos.csv' CSV HEADER;
\i db/test_crud.sql
Esto crea la estructura, carga datos de ejemplo y ejecuta las pruebas CRUD básicas.

Accesibilidad (Sprint Review)
Contraste mínimo WCAG AA en textos sobre imágenes.

Botones y áreas táctiles ≥ 44 px; foco visible.

Mensajes de error comprensibles (sin códigos técnicos).

Definition of Done 
Criterios de aceptación de HU cumplidos y validados.

Pruebas CRUD ejecutadas con evidencias en /db.

Vistas UI actualizadas en Figma y capturas en /ui.

UML actualizado en /UML y fuentes PlantUML en /UML/src.

Documentado en README y validado con stakeholder.

Integrantes
Product Owner / Scrum Master: Gabriel Ibacache
Development Team: Alexander (simulado)


