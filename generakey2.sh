#!/bin/bash

openssl pkcs12 in certificado.pfx -out claveprivada.pem -nocerts -nodes
# Eliminamos la passphrase de la clave privada 
openssl rsa -in claveprivada.pem -out claveprivadasinpass.pem
