Feature: Aumento de Cupo de tarjetas de crédito offline
Yo como Cliente Activo del Banco
Quiero aumentar el cupo en mis tarjetas de crédito

Scenario: Aumento de cupo en Tarjetas de Crédito con el sistema offline
Given	Poseo Tarjetas de Crédito
And	Tengo no vigente una de las Tarjetas de Crédito
And	No Tengo mora ni deuda en ellas
And	El sistema de pronto queda offline
When	Relleno mi RUT con “1-9”
And	Relleno mi Nombre con “Juan”
And	Relleno mi Apellido con “Perez”
And	Relleno mi Correo con JuanPerez@chile.cl
And	Baja de los servicios Banco (sistema queda offline)
And	Pulso el botón Aumento de Cupo
Then	Deberíamos ver el mensaje “En estos momentos no lo podemos atender, reintente más tarde por favor“
And	Se deberá desplegar un botón “Continuar”
