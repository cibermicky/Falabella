Feature: Compra de artículo sección Hogar pago offline
Yo como Consumidor registrado
Quiero comprar artículo desde la sección Hogar

Scenario: Compra de artículo desde la sección Hogar con pago con sistema offline
Given	Poseo Medios de pago
And	Tengo saldo disponible para comprar
And	El sistema de pronto queda offline
When	Pulso la viñeta “Hogar”
And	Pulso el artículo “Alfombra Alf-393”
And	Pulso el botón “Agregar al carrito”
And	Pulso el botón “Comprar” 
And	Pulso el botón “Pagar”
And	Pulso el botón “Medio de pago Débito”
And	Pulso el botón “Selección de Banco”
And	Pulso el botón “Confirmar Clave”
And	Baja de los servicios Banco (sistema queda offline)
And	Pulso el botón “Pagar”
And	Pulso el botón “Aceptar”
Then	Deberíamos ver el mensaje “En estos momentos no lo podemos atender, reintente más tarde por favor“
And	Se deberá desplegar un botón “Continuar”
