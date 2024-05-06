#!/bin/bash

# Check if user is root or sudo
if ! [ $( id -u ) = 0 ]; then
    echo "Inicie o script com usuario ROOT" 1>&2
    exit 1
fi

KESL_DEBIAN_32="https://products.s.kaspersky-labs.com/endpoints/keslinux10/12.0.0.6672/multilanguage-12.0.0.6672/3739343634337c44454c7c31/kesl_12.0.0-6672_i386.deb"
KESL_DEBIAN_64="https://products.s.kaspersky-labs.com/endpoints/keslinux10/12.0.0.6672/multilanguage-12.0.0.6672/3739343634317c44454c7c31/kesl_12.0.0-6672_amd64.deb"
KESL_RH_32="https://products.s.kaspersky-labs.com/endpoints/keslinux10/12.0.0.6672/multilanguage-12.0.0.6672/3739343633337c44454c7c31/kesl-12.0.0-6672.i386.rpm"
KESL_RH_64="https://products.s.kaspersky-labs.com/endpoints/keslinux10/12.0.0.6672/multilanguage-12.0.0.6672/3739343633347c44454c7c31/kesl-12.0.0-6672.x86_64.rpm"

# Verifica a arquitetura do sistema
if [ "$(uname -m)" == "x86_64" ]; then
    echo "Arquitetura x86_64 detectada."
    ARQUITETURA="64"
else
    echo "Arquitetura x86 detectada."
    ARQUITETURA="32"
fi

if [ -f /etc/debian_version ]; then
    echo "Distribuição baseada em Debian detectada."

    if [ "$ARQUITETURA" == "64" ]; then
        sudo apt update
        wget ${KESL_DEBIAN_64}
        apt-get install ./kesl_12.0.0-6672_amd64.deb
        kesl/bin/kesl-setup.pl

        rm kesl_12.0.0-6672_amd64.deb
    
    else
        sudo apt update
        wget ${KESL_DEBIAN_32}
        apt-get install ./kesl_12.0.0-6672_i386.deb
        kesl/bin/kesl-setup.pl

        rm kesl_12.0.0-6672_i386.deb
    fi

elif [ -f /etc/redhat-release ]; then
    echo "Distribuição baseada em Red Hat detectada."

    if [ "$ARQUITETURA" == "64" ]; then
        yum update -y
        yum install wget -y
        wget ${KESL_RH_64}
        rpm -i ./kesl-12.0.0-6672.x86_64.rpm
        kesl/bin/kesl-setup.pl

        rm kesl-12.0.0-6672.x86_64.rpm

    else

        yum update -y
        yum install wget -y
        wget ${KESL_RH_32}
        rpm -i ./kesl-12.0.0-6672.i386.rpm
        kesl/bin/kesl-setup.pl

        rm kesl-12.0.0-6672.i386.rpm
    fi

else
    echo "Não foi possível detectar a distribuição Linux suportada."
    exit 1
fi