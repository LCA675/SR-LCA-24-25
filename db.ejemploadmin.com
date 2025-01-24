; Estaciones de trabajo departamento administracion
PC3     3600    IN      A       172.17.3.3
PC4     3600    IN      A       172.17.3.4

$ORIGIN contabilidad.ejemplo.com.
PC5     3600    IN      A       172.17.3.5
PC6     1h      IN      A       172.17.3.6

$ORIGIN secretaria.ejemplo.com.
PC7     1h      IN      A       172.17.3.7
PC8     1h      IN      A       172.17.3.8
PC9     1h      IN      A       172.17.3.9

