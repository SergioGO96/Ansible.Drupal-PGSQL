;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	nodo1.example.com. root.localhost. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	nodo1.example.com.

$ORIGIN example.com.
nodo1	IN	A	10.0.0.10
nodo2	IN	A	10.0.0.11
drupal IN CNAME nodo2
