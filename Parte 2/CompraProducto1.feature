Feature: Compra de un producto sección Hogar
Yo como Consumidor registrado
Quiero comprar un artículo desde la sección Hogar

Scenario: Compra de un solo artículo desde la sección Hogar cualquier medio de pago
Given	Poseo Medios de pago
And	Tengo saldo disponible para comprar
When	Pulso la viñeta “Hogar”
And	Pulso el artículo “Lampara de mesa E322”
And	Pulso el botón “Agregar al carrito”
And	Pulso el botón “Comprar” 
And	Pulso el botón “Pagar”
And	Pulso el botón “Medio de pago Débito”
And	Pulso el botón “Selección de Banco”
And	Pulso el botón “Confirmar Clave”
And	Pulso el botón “Pagar”
And	Pulso el botón “Aceptar”
Then	Deberíamos ver el mensaje “Pago exitoso“
And	Se deberá desplegar un comprobante con el Pago realizado online