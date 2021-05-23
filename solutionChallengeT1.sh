#!/bin/bash
echo -e "\t\t######## OPCIONES ########"
echo -e "\tCREATE\t(1)"
echo -e "\tDESTROY\t(2)"
echo -e "\tOUTPUT\t(3)"
read -p "Introduce un numero de la opcion: " OPTION
 
case $OPTION in
        1
                sh ./k8s-gcp-whoami-master/start_tools.sh
        ;;
        2)
                echo "DESTROY OPCION"
        ;;
        3)
                echo "OUTPUT OPCION"
        ;;
        *)
                echo "OPCION INCORRECTA"
        ;;
esac