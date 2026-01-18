#!/usr/bin/env bash
# =========================================================================
# File: ghser.sh
# Description: Central or main script that leads to the others modules.
# Repository: https://github.com/Usergh0st/Gh0stFramework.git
# Author: Enríque González Aka (Usergh0st)
# Date: 07.01.2026 10:08 PM
# version: 0.1.1
# =========================================================================

# Status indicator | Indicadores de estado
warning="${Red}[!]"
working="${Yellow}[/]"
has_error="${White}[x]"
done="${Green}[✔]"

# Export and maintain variables | exportando variables y manteniendo
ghser_start=true
ghser_path=${pwd}
user_id=$(whoami)

# Colors in the script | colores en el script
Black="\e[1;30m"
Red="\e[1;31m"
Green="\e[1;32m"
Yellow="\e[1;33m"
Blue="\e[1;34m"
Purple="\e[1;35m"
Cyan="\e[1;36m"
White="\e[1;37m"

# Others text styles and reset colores | otros estilos de texto y reiniciar color
Reset="\e[0m"
Bold="\e[1m"
Italic="\e[3m"

# Function show logo in the script | funcion mostrar logo en el script
logo () {
reset ; echo -e "${Red}
		⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
		⠀⠀⠀⠀⠈⡀⢸⣆⠀⠀⠀⠘⢃⣀⣐⣁⣀⠀⠀⠀⠐⠄⠀⡀⠀⠀⠀⠀⠀⠀
		⠀⠀⠀⠀⢀⡀⢀⠈⡀⠂⣰⡾⠏⠉⠉⠉⠙⠿⣦⡀⠀⡀⠀⢀⡈⠀⠂⠀⠀⠀
		⠀⠀⠀⠀⠘⠡⠨⠧⣽⡾⠏⠀⠀⠀⠀⠀⠀⠀⠈⢿⣇⠁⢃⡘⠁⠄⠁⠀⠀⠀
${Purple}		⠀⠀⠆⠈⠲⠀⣀⢰⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣇⠨⢅⢀⡐⠠⠂⠀	${Italic}${Purple}v0.1.1${Reset}
		⠐⢠⣬⡀⠀⠌⢘⢊⣿⡇⢠⣾⣿⣦⠀⢠⣿⣿⣦⠀⣿⣿⢀⡀⠌⠁⠆⠀⠀⠀
		⠀⠀⠚⠁⠘⠑⠢⣽⣿⡇⠈⠛⠛⠋⣠⡌⠛⠛⠋⢠⣿⡟⠀⠠⢀⣀⠐⠕⢡		${Italic}${White}By Enríque González Aka ${Red}(Usergh0st)${Reset}
${Cyan}		⠀⡀⠤⠬⠀⠁⢁⣴⣿⣿⣷⣶⠂⡀⠉⠁⡀⢲⣶⡿⣹⣷⡦⡸⠋⠀⠀⠀⡀⠀
		⠀⠈⠢⠀⠘⡴⣿⣿⡟⣟⣿⢻⣆⣁⣸⣀⣁⣾⠛⣼⡿⢻⣼⣷⣠⠤⠄⠀⠀	${Italic}${Cyan}Script${Reset}
		⠘⠃⠀⡄⢤⣿⡿⣿⡷⡌⠹⢻⡭⣽⢻⣿⠟⠀⣾⡟⣷⣻⣿⢛⣼⢀⡄⠂⠀⠀
${Green}		⢁⠀⣀⠀⣷⣴⣌⠙⠎⡃⠀⠀⠈⠘⠁⠀⠀⠀⠋⠘⡁⢠⣾⣻⣿⣇⠀⡀⠀⠀
		⠈⠢⠈⣸⣶⣾⣏⠛⠀⡇⠁⠀⠀⠀⢀⠀⠁⠀⢤⡇⡇⠘⢫⡾⠵⣿⠉⠀⠀⠀
${White}		⠀⠀⠁⣿⣯⠙⠛⢫⠀⡇⠀⠀⠀⠀⠄⠀⠀⠠⠀⡅⡇⢸⠉⠉⠛⣿⡆⠂⠀⠀
		⠀⠀⠀⠙⠿⠦⠤⠶⡓⠧⣤⣴⣶⣶⣶⣶⣶⣾⣷⣇⠗⡳⠷⠶⠿⠟⠁⠀⠀⠀
		⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉${Reset}"
echo -e "    ${White}░█▀▀░█░█░${Cyan}█▀█░█▀▀${Purple}░▀█▀░█▀▀░${Blue}█▀▄░█▀█░${Yellow}█▄█░█▀▀░${Green}█░█░█▀█░${White}█▀▄░█░█ ${Reset}"
echo -e "    ${White}░█░█░█▀█░${Cyan}█░█░▀▀█${Purple}░░█░░█▀▀░${Blue}█▀▄░█▀█░${Yellow}█░█░█▀▀░${Green}█▄█░█░█░${White}█▀▄░█▀▄ ${Reset}"
echo -e "    ${White}░▀▀▀░▀░▀░${Cyan}▀▀▀░▀▀▀${Purple}░░▀░░▀░░░${Blue}▀░▀░▀░▀░${Yellow}▀░▀░▀▀▀░${Green}▀░▀░▀▀▀░${White}▀░▀░▀░▀ ${Reset}\n"
echo -e "    ${White}${Bold}[Hello user ${Red}${user_id}${White} welcome to central menu.]   ${Reset}" ; sleep 1.1
echo -e "    ${White}${Bold}[If you want return or exit, you can use ${Red}(CTRL+C)${White}] ${Reset}\n" ; sleep 1.1

}

# The central menu with options | menu central con opciones.
menu () {
	echo -e "    ${White}${Bold}[Central menu options] ${Reset}\n" ; sleep 1.1
	echo -e "    ${Purple}[00] Script exit"
	echo -e "    ${Purple}[01] About Gh0stFramework"
	echo -e "    ${Purple}[02] Script updte"
}

# Main run | rutina principal.
logo
menu
