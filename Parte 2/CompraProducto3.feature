Feature: Compra de artículo sección Hogar pago no exitoso
Yo como Consumidor registrado
Quiero comprar artículo desde la sección Hogar

Scenario: Compra de artículo desde la sección Hogar pago no exitoso
Given	Poseo Medios de pago
And	No Tengo saldo disponible para comprar
When	Pulso la viñeta “Hogar”
And	Pulso el artículo “Mesa de Centro MeCent-743”
And	Pulso el botón “Agregar al carrito”
And	Pulso el botón “Comprar” 
And	Pulso el botón “Pagar”
And	Pulso el botón “Medio de pago Débito”
And	Pulso el botón “Selección de Banco”
And	Pulso el botón “Confirmar Clave”
And	Pulso el botón “Pagar”
And	Pulso el botón “Aceptar”
Then	Deberíamos ver el mensaje “Usted no posee saldo suficiente, se ha cancelado el pago“
