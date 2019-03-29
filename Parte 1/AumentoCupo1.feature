Feature: Aumento de Cupo de tarjetas de crédito con mora
Yo como Cliente Activo del Banco
Quiero aumentar el cupo en mis tarjetas de crédito

Scenario: Aumento de cupo en Tarjetas de Crédito (Una tiene mora)
Given	Poseo Tarjetas de Crédito
And	Tengo vigentes las Tarjetas de Crédito
And	Tengo mora en una de ellas
When	Relleno mi RUT con “1-9”
And	Relleno mi Nombre con “Juan”
And	Relleno mi Apellido con “Perez”
And	Relleno mi Correo con JuanPerez@chile.cl
And	Pulso el botón Aumento de Cupo
Then	Deberíamos ver el mensaje “Se ha aumentado el cupo exitosamente en la tarjeta vigente y sin mora xxx-xxx-xxx-9898“
And	Se deberá desplegar un comprobante con el nuevo saldo disponible
