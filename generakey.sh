#!/bin/bash
echo
echo "Se generara un fichero cert.pem con certificado SSL/TLS y un fichero key.pem con la clave privada."
echo
openssl req -x509 -nodes -newkey rsa:1024 -keyout key.pem -out cert.pem
echo "Eliminamos la passphrase de la clave privada" 
openssl rsa -in key.pem -out key2.pem
