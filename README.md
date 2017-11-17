# wiresharkssl

1º.- Generar un certificado SSL y clave privada
openssl req -x509 -nodes -newkey rsa:1024 -keyout key.pem -out cert.pem

2º.- En Wireshark
Preferencias => MENU DE EDICION = PROTOCOL => SSL.
Editar:
IP: Direccion IP del servidor
Puerto: 443
Protocolo: HTTP
Archivo de clave key.pem : Seleccionamos el archivo key.pem generado
Contrasena: no

3º.- Con Wireshark, ahora veremos descifrado el protocolo SSL o TLS.
Por ejemplo para filtrar el trafico SSL/TLS  tcp.port == 443 -
