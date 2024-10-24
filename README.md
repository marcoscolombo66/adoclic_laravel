
# TEST ADOCLIC API EN LARAVEL

### Obtener de categorías

``http
  GET /api/{Category}  
``

**Ejemplos:**

http://localhost:8000/api/Animals
http://localhost:8000/api/Security


| Parametro | Tipo     | Descripción                |
| :-------- | :------- | :------------------------- |
| `Category` | `string` | **Requerido.** Categoría a buscar |

### Buscar data de la api or del archivo JSON entity.

``http
  http://localhost:8000/fetch-data
``


### Verificar categorias en la base de datos:
http://localhost:8000/categories
