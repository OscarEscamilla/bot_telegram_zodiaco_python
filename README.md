# Bot de Telegram y Python

En este demo se creara una base de datos con una tabla de productos y 3 registros, el bot de telegram realizará consultas a la tabla de productos y posteriormente devuelve el resulado de esa consulta a través del cliente Telegram, ya sea móvil o Web.

## Instalación de librerías requeridas

pip install -r requirements.txt

## Configuración 

token = 'TOKEN que da el BotFather cuando se crea un nuevo bot'

## Creación de la base de datos desde consola

myqsl>source bot_demo.sql

## Uso del bot

1. Invitar como contacto en Telegram al bot.
2. Iniciar conversación con el.
3. Usar el comando /info id_producto ejem. /info 2
4. Si el id_producto coincide con el de un producto existente en la base de datos, el bot concatena el producto, precio y existencias.
