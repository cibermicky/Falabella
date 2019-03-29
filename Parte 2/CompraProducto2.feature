Feature: Compra de más de un producto sección Hogar
Yo como Consumidor registrado
Quiero comprar varios artículos desde la sección Hogar

Scenario: Compra de más de un artículo desde la sección Hogar cualquier medio de pago
Given	Poseo Medios de pago
And	Tengo saldo disponible para comprar
When	Pulso la viñeta “Hogar”
And	Pulso el artículo “Lámpara de mesa Lamp-322”
And	Pulso el botón “Agregar al carrito”
And	Pulso el botón “Seguir comprando”
And	Pulso el artículo “Cortinas de Baño Cob-433”
And	Pulso el botón “Comprar” 
And	Pulso el botón “Pagar”
And	Pulso el botón “Medio de pago Débito”
And	Pulso el botón “Selección de Banco”
And	Pulso el botón “Confirmar Clave”
And	Pulso el botón “Pagar”
And	Pulso el botón “Aceptar”
Then	Deberíamos ver el mensaje “Pago exitoso“
And	Se deberá desplegar un comprobante con el Pago realizado online
