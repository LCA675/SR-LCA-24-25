$TTL   604800
$ORIGIN ejemplo.com.
ejemplo.com.	IN	SOA   PC11 admin (
		   3	  ; Serial	
	      604800	  ; Refresh 
	       86400	  ; Retry
	     2419200	  ; Expire
	      604800 )    ; Negative Cache TTL

;Servidores de nombre
@	IN	NS	PC11.ejemplo.com.
	IN	NS	PC12.ejemplo.com.

; Servidores de correo
	IN	MX	10	smtp.ejemplo.com.
	IN	MX	20	smtp2.ejemplo.com.

;Estaciones de trabajo para la red 172.17.3.0/24
$INCLUDE /var/lib/bind/db.ejemplorrhh.com
$INCLUDE /var/lib/bind/db.ejemploadmin.com 

;Servidor DHCP	+	Router.Debian1-Pruebas/Router2
PC10	IN	A	172.17.3.11
	IN	A	172.17.2.11

router	IN	CNAME	PC10

;Servidores DNS
PC11	IN	A	172.17.3.15
dns1	IN	CNAME	PC11
PC12	IN	A	172.17.3.14
dns2	IN	CNAME	PC12
servidorimpresion	IN	A	172.17.3.13


;Servidores de la red 172.17.2.0/24
PC14.ejemplo.com.	IN	A	172.17.2.13
www     IN      CNAME   PC14
ftp     IN      CNAME   PC14

PC15	IN	A	172.17.2.14
smtp	IN	CNAME	PC15
pop	IN	CNAME	PC15

PC16	IN	A	172.17.2.3
smtp2	IN	CNAME	PC16


