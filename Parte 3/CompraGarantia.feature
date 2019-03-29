Scenario: Compra de 2 artículos ps4 con garantía extendida 2 años
Given	Soy consumidor
And	Ingreso al sitio de falabella
When	Ingreso al sitio de Google
And	Busco por la palabra “Falabella”
And	Pulso el texto que dice “Falabella.com - Mejor Compra Online”
And	Busco por la palabra “ps4” 
And	Pulso el producto seleccionado
And	Pulso el botón “Agregar a mi bolsa”
And	Pulso el botón “Ver mi bolsa de compras”
And	Pulso el botón con signo “+” para adicionar un producto
And	Pulso el botón “Agregar garantía  extendida”
And	Selecciono “2 años de garantía extendida”
And	Pulso el botón “Ir a comprar”
Then	Deberíamos ver la pantalla de inicio de sesión
And	Se deberá desplegar la opción de despacho
”
