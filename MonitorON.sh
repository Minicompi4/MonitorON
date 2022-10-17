  #!/bin/bash




echo -e "\e[31m __  __             _ _              ___  _   _ \e[0m"
sleep 0.05
echo -e "\e[31m|  \/  | ___  _ __ (_) |_ ___  _ __ / _ \| \ | |\e[0m"
sleep 0.05
echo -e "\e[31m| |\/| |/ _ \| '_ \| | __/ _ \| '__| | | |  \| |\e[0m"
sleep 0.05
echo -e "\e[31m| |  | | (_) | | | | | || (_) | |  | |_| | |\  |\e[0m"
sleep 0.05
echo -e "\e[31m|_|  |_|\___/|_| |_|_|\__\___/|_|   \___/|_| \_|\e[0m"
echo " "
sleep 0.15
echo -e "\e[31m Hecho por Minicompi4  ^^ \e[0m"
echo " "
      echo -e "\e[33m Recuerda loguearte como superusuario\e[0m"
echo " "


OPTIONS="Encender Checkear_Estado Salir"
 echo " "
       select opt in $OPTIONS; do
           if [ "$opt" = "Salir" ]; then
            echo Saliendo...
            exit
            
           elif [ "$opt" = "Encender" ]; then
           
           airmon-ng start wlx503eaa22b717
           ifconfig wlx503eaa22b717 down
           iwconfig wlx503eaa22b717 mode monitor
           ifconfig wlx503eaa22b717 up
            echo " "
           echo " "
           echo "
1) Encender
2) Checkear_Estado
3) Salir
"
           
           elif [ "$opt" = "Checkear_Estado" ]; then
           iwconfig
           echo " "
           echo " "
           echo "
1) Encender
2) Checkear_Estado
3) Salir
"

             else
            clear
            echo "no es una opción valida :("
           fi
       done
