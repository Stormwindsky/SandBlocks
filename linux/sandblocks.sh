#!/bin/bash

# ==========================================
# SandBlocks - Terminal software for TurboWarp
# Inspired by how Arch Linux works
# ==========================================

# Colors for better readability in the terminal
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Default language variable
LANGUAGE="en"

# Translation dictionary
declare -A strings_en strings_fr strings_es

# English
strings_en[menu_title]="Welcome to SandBlocks 🚀"
strings_en[option1]="Select an existing folder"
strings_en[option2]="Download and prepare a new project"
strings_en[option3]="Execute the Node.js project"
strings_en[option4]="Languages"
strings_en[option5]="View code and add assets"
strings_en[option6]="Quit"
strings_en[choose_option]="Please choose an option: "
strings_en[not_implemented]="This feature will be available soon. Press Enter to return to the menu."
strings_en[press_enter]="Press Enter to continue..."
strings_en[prepare_title]="New Project Preparation ⬇️"
strings_en[downloading]="Downloading archives..."
strings_en[download_complete]="Download complete!"
strings_en[enter_folder_name]="Please provide a name for the new project folder (ex: MyFolder):"
strings_en[name_cannot_be_empty]="Name cannot be empty. Please try again:"
strings_en[enter_folder_path]="Where do you want to create this folder? (ex: /home/user/Documents):"
strings_en[leave_empty]="Leave empty to create in the current directory."
strings_en[creating_folder]="Creating the project folder at: "
strings_en[moving_archives]="Moving archives to the new folder..."
strings_en[unzipping]="Decompressing files..."
strings_en[deleting_zips]="Deleting .zip archives..."
strings_en[preparation_complete]="Preparation complete! The files are in "
strings_en[execute_title]="Executing Node.js project 🚀"
strings_en[npm_not_found]="Error: npm is not installed. Please install it to continue."
strings_en[enter_project_path]="Please enter the full path to your project folder (ex: /home/stormwindsky/Desktop/MyFolder):"
strings_en[folders_not_found]="Error: scratch-vm-develop and/or scratch-gui-develop folders do not exist in the specified path."
strings_en[path_info]="Please verify that you have prepared the project with option 2 or that the path is correct."
strings_en[launching]="Launching installation and startup. This may take some time..."
strings_en[executing_vm]="▶️ Executing commands for scratch-vm..."
strings_en[executing_gui]="▶️ Executing commands for scratch-gui..."
strings_en[starting_server]="▶️ Starting the server and opening localhost..."
strings_en[browser_error]="Unable to open the browser automatically. Please access http://localhost:8601/ manually."
strings_en[server_running]="Server is running. Press Ctrl+C in this terminal to stop it."
strings_en[goodbye]="Goodbye! 👋"
strings_en[invalid_option]="Invalid option. Please choose a valid option."
strings_en[language_choice]="Choose your language:"
strings_en[language_changed]="Language has been set to "
strings_en[select_folder_title]="Select Project Folder"
strings_en[no_folder_selected]="No folder was selected."
strings_en[mod_menu_title]="Modification Menu"
strings_en[mod_option1]="Add a sprite"
strings_en[mod_option2]="Add a sprites pack"
strings_en[mod_option3]="Add an audio clip"
strings_en[mod_option4]="Add a backdrop (Wallpaper)"
strings_en[mod_option5]="Back"
strings_en[enter_sprite_id]="Enter the sprite ID (ex: 809d9b47347a6af2860e7a3a35bce057.svg):"
strings_en[invalid_format]="Invalid format. Only .svg and .png formats are allowed."
strings_en[enter_bitmap_resolution]="Enter Bitmap Resolution (default is 1):"
strings_en[enter_rot_x]="Enter rotation center X:"
strings_en[enter_rot_y]="Enter rotation center Y:"
strings_en[add_tags_q]="Do you want to add tag(s)? (Yes/No)"
strings_en[yes]="Yes"
strings_en[no]="No"
strings_en[enter_tag]="Enter a tag (type /go to finish):"
strings_en[tag_exists]="This tag already exists. Please enter another one."
strings_en[enter_sprite_name]="Enter a name for the sprite:"
strings_en[json_generated]="New JSON entry generated and added to the file."

# French
strings_fr[menu_title]="Bienvenue dans SandBlocks 🚀"
strings_fr[option1]="Sélectionner un dossier existant"
strings_fr[option2]="Télécharger et préparer un nouveau projet"
strings_fr[option3]="Exécuter le projet Node.js"
strings_fr[option4]="Langues"
strings_fr[option5]="Voir le code et ajouter des ressources"
strings_fr[option6]="Quitter"
strings_fr[choose_option]="Veuillez choisir une option : "
strings_fr[not_implemented]="Cette fonctionnalité sera bientôt disponible. Appuyez sur Entrée pour revenir au menu."
strings_fr[press_enter]="Appuyez sur Entrée pour continuer..."
strings_fr[prepare_title]="Préparation du nouveau projet ⬇️"
strings_fr[downloading]="Téléchargement des archives..."
strings_fr[download_complete]="Téléchargement terminé !"
strings_fr[enter_folder_name]="Veuillez donner un nom pour le nouveau dossier du projet (ex: MonDossier) :"
strings_fr[name_cannot_be_empty]="Le nom ne peut pas être vide. Veuillez réessayer :"
strings_fr[enter_folder_path]="Où souhaitez-vous créer ce dossier ? (ex: /home/utilisateur/Documents) :"
strings_fr[leave_empty]="Laissez vide pour créer dans le répertoire courant."
strings_fr[creating_folder]="Création du dossier de projet à l'emplacement : "
strings_fr[moving_archives]="Déplacement des archives dans le nouveau dossier..."
strings_fr[unzipping]="Décompression des fichiers..."
strings_fr[deleting_zips]="Suppression des archives .zip..."
strings_fr[preparation_complete]="Préparation terminée ! Les fichiers sont dans "
strings_fr[execute_title]="Exécution du projet Node.js 🚀"
strings_fr[npm_not_found]="Erreur : npm n'est pas installé. Veuillez l'installer pour continuer."
strings_fr[enter_project_path]="Veuillez entrer le chemin complet vers votre dossier de projet (ex: /home/stormwindsky/Bureau/MonDossier) :"
strings_fr[folders_not_found]="Erreur : Les dossiers scratch-vm-develop et/ou scratch-gui-develop n'existent pas dans le chemin spécifié."
strings_fr[path_info]="Veuillez vérifier que vous avez bien préparé le projet avec l'option 2 ou que le chemin est correct."
strings_fr[launching]="Lancement de l'installation et du démarrage. Cela peut prendre du temps..."
strings_fr[executing_vm]="▶️ Exécution des commandes pour scratch-vm..."
strings_fr[executing_gui]="▶️ Exécution des commandes pour scratch-gui..."
strings_fr[starting_server]="▶️ Démarrage du serveur et ouverture de localhost..."
strings_fr[browser_error]="Impossible d'ouvrir le navigateur automatiquement. Veuillez accéder à http://localhost:8601/ manuellement."
strings_fr[server_running]="Serveur en cours d'exécution. Appuyez sur Ctrl+C dans ce terminal pour l'arrêter."
strings_fr[goodbye]="Au revoir ! 👋"
strings_fr[invalid_option]="Option invalide. Veuillez choisir une option valide."
strings_fr[language_choice]="Choisissez votre langue :"
strings_fr[language_changed]="La langue a été changée en "
strings_fr[select_folder_title]="Sélectionner un dossier de projet"
strings_fr[no_folder_selected]="Aucun dossier n'a été sélectionné."
strings_fr[mod_menu_title]="Menu de modification"
strings_fr[mod_option1]="Rajouter un sprite"
strings_fr[mod_option2]="Rajouter des sprites (sprites pack)"
strings_fr[mod_option3]="Rajouter un extrait audio"
strings_fr[mod_option4]="Rajouter un backdrop (''Wallpaper'')"
strings_fr[mod_option5]="Back"
strings_fr[enter_sprite_id]="Le Id de votre sprite. Seuls les formats .svg et .png sont 'autorisés':"
strings_fr[invalid_format]="Format invalide. Seuls les formats .svg et .png sont autorisés."
strings_fr[enter_bitmap_resolution]="Entrer la résolution Bitmap (par défaut 1):"
strings_fr[enter_rot_x]="Donner la rotation center X:"
strings_fr[enter_rot_y]="Donner la rotation center Y:"
strings_fr[add_tags_q]="Tu veux donner à ton sprite un ou des tag(s)? (Oui/Non)"
strings_fr[yes]="Oui"
strings_fr[no]="Non"
strings_fr[enter_tag]="Entrer un tag (tapez /go pour terminer):"
strings_fr[tag_exists]="Ce tag existe déjà. Veuillez en entrer un autre."
strings_fr[enter_sprite_name]="Donner un nom pour le sprite:"
strings_fr[json_generated]="Nouvelle entrée JSON générée et ajoutée au fichier."

# Spanish
strings_es[menu_title]="Bienvenido a SandBlocks 🚀"
strings_es[option1]="Seleccionar una carpeta existente"
strings_es[option2]="Descargar y preparar un nuevo proyecto"
strings_es[option3]="Ejecutar el proyecto Node.js"
strings_es[option4]="Idiomas"
strings_es[option5]="Ver código y añadir recursos"
strings_es[option6]="Salir"
strings_es[choose_option]="Por favor, elija una opción: "
strings_es[not_implemented]="Esta función estará disponible pronto. Presiona Enter para volver al menú."
strings_es[press_enter]="Presiona Enter para continuar..."
strings_es[prepare_title]="Preparación de un nuevo proyecto ⬇️"
strings_es[downloading]="Descargando archivos..."
strings_es[download_complete]="Descarga completa!"
strings_es[enter_folder_name]="Por favor, proporcione un nombre para la nueva carpeta del proyecto (ej: MiCarpeta):"
strings_es[name_cannot_be_empty]="El nombre no puede estar vacío. Por favor, inténtelo de nuevo:"
strings_es[enter_folder_path]="¿Dónde desea crear esta carpeta? (ej: /home/usuario/Documentos):"
strings_es[leave_empty]="Deje en blanco para crear en el directorio actual."
strings_es[creating_folder]="Creando la carpeta del proyecto en: "
strings_es[moving_archives]="Moviendo los archivos a la nueva carpeta..."
strings_es[unzipping]="Descomprimiendo archivos..."
strings_es[deleting_zips]="Eliminando archivos .zip..."
strings_es[preparation_complete]="¡Preparación completa! Los archivos están en "
strings_es[execute_title]="Ejecutando proyecto Node.js 🚀"
strings_es[npm_not_found]="Error: npm no está instalado. Por favor, instálelo para continuar."
strings_es[enter_project_path]="Por favor, introduzca la ruta completa a la carpeta de su proyecto (ej: /home/stormwindsky/Escritorio/MiCarpeta):"
strings_es[folders_not_found]="Error: Las carpetas scratch-vm-develop y/o scratch-gui-develop no existen en la ruta especificada."
strings_es[path_info]="Por favor, verifique que ha preparado el proyecto con la opción 2 o que la ruta es correcta."
strings_es[launching]="Iniciando la instalación y el arranque. Esto puede tomar algún tiempo..."
strings_es[executing_vm]="▶️ Ejecutando comandos para scratch-vm..."
strings_es[executing_gui]="▶️ Ejecutando comandos para scratch-gui..."
strings_es[starting_server]="▶️ Iniciando el servidor y abriendo localhost..."
strings_es[browser_error]="No se puede abrir el navegador automáticamente. Por favor, acceda a http://localhost:8601/ manuellement."
strings_es[server_running]="El servidor está en ejecución. Presione Ctrl+C en esta terminal para detenerlo."
strings_es[goodbye]="¡Adiós! 👋"
strings_es[invalid_option]="Opción inválida. Por favor, elija una opción válida."
strings_es[language_choice]="Elige tu idioma:"
strings_es[language_changed]="El idioma ha sido cambiado a "
strings_es[select_folder_title]="Seleccionar carpeta del proyecto"
strings_es[no_folder_selected]="No se seleccionó ninguna carpeta."
strings_es[mod_menu_title]="Menú de modificación"
strings_es[mod_option1]="Añadir un sprite"
strings_es[mod_option2]="Añadir sprites (paquete de sprites)"
strings_es[mod_option3]="Añadir un clip de audio"
strings_es[mod_option4]="Añadir un fondo (''Wallpaper'')"
strings_es[mod_option5]="Atrás"
strings_es[enter_sprite_id]="Introduce el ID del sprite. Solo se permiten los formatos .svg y .png:"
strings_es[invalid_format]="Formato inválido. Solo se permiten los formatos .svg y .png."
strings_es[enter_bitmap_resolution]="Introduce la resolución de mapa de bits (el valor predeterminado es 1):"
strings_es[enter_rot_x]="Introduce el centro de rotación X:"
strings_es[enter_rot_y]="Introduce el centro de rotación Y:"
strings_es[add_tags_q]="¿Quieres añadir una o varias etiquetas? (Sí/No)"
strings_es[yes]="Sí"
strings_es[no]="No"
strings_es[enter_tag]="Introduce una etiqueta (escribe /go para terminar):"
strings_es[tag_exists]="Esta etiqueta ya existe. Por favor, introduce otra."
strings_es[enter_sprite_name]="Introduce un nombre para el sprite:"
strings_es[json_generated]="Nueva entrada JSON generada y añadida al archivo."


# Function to get the translated string
function get_string() {
    local key="$1"
    local lang_var="strings_${LANGUAGE}[$key]"
    echo "${!lang_var}"
}

# Function to display the main menu
function show_menu() {
    clear
    echo -e "${GREEN}==========================================${NC}"
    echo -e "${YELLOW}$(get_string menu_title)${NC}"
    echo -e "${GREEN}==========================================${NC}"
    echo -e "${CYAN}1. $(get_string option1)${NC}"
    echo -e "${CYAN}2. $(get_string option2)${NC}"
    echo -e "${CYAN}3. $(get_string option3)${NC}"
    echo -e "${CYAN}4. $(get_string option4)${NC}"
    echo -e "${CYAN}5. $(get_string option5)${NC}"
    echo -e "${CYAN}6. $(get_string option6)${NC}"
    echo -e "${GREEN}------------------------------------------${NC}"
    echo -ne "$(get_string choose_option)"
}

# Function to display the modification menu
function show_modification_menu() {
    while true; do
        clear
        echo -e "${GREEN}==========================================${NC}"
        echo -e "${YELLOW}$(get_string mod_menu_title)${NC}"
        echo -e "${GREEN}==========================================${NC}"
        echo -e "${CYAN}1. $(get_string mod_option1)${NC}"
        echo -e "${CYAN}2. $(get_string mod_option2)${NC}"
        echo -e "${CYAN}3. $(get_string mod_option3)${NC}"
        echo -e "${CYAN}4. $(get_string mod_option4)${NC}"
        echo -e "${CYAN}5. $(get_string mod_option5)${NC}"
        echo -e "${GREEN}------------------------------------------${NC}"
        echo -ne "$(get_string choose_option)"
        read -r mod_choice
        case "$mod_choice" in
            1)
                add_sprite
                ;;
            2|3|4)
                clear
                echo -e "${RED}$(get_string not_implemented)${NC}"
                read -r
                ;;
            5)
                break
                ;;
            *)
                echo -e "\\n${RED}$(get_string invalid_option)${NC}"
                sleep 2
                ;;
        esac
    done
}

# Function to add a new sprite
function add_sprite() {
    local asset_id_md5ext format bitmap_res rot_x rot_y tags name tags_array=()
    local json_output_file="scratch-gui-develop/src/lib/libraries/costumes.json"

    clear
    echo -e "${GREEN}==========================================${NC}"
    echo -e "${YELLOW}$(get_string mod_option1)${NC}"
    echo -e "${GREEN}==========================================${NC}"

    # 1. Ask for the sprite ID and check the format
    while true; do
        echo -ne "$(get_string enter_sprite_id)"
        read -r asset_id_md5ext
        if [[ $asset_id_md5ext =~ \.svg$ ]]; then
            format="svg"
            asset_id="${asset_id_md5ext%.svg}"
            break
        elif [[ $asset_id_md5ext =~ \.png$ ]]; then
            format="png"
            asset_id="${asset_id_md5ext%.png}"
            break
        else
            echo -e "${RED}$(get_string invalid_format)${NC}"
        fi
    done

    # 2. Ask for the bitmap resolution
    echo -ne "$(get_string enter_bitmap_resolution)"
    read -r bitmap_res
    bitmap_res=${bitmap_res:-1}

    # 3. Ask for rotation centers
    echo -ne "$(get_string enter_rot_x)"
    read -r rot_x
    echo -ne "$(get_string enter_rot_y)"
    read -r rot_y

    # 4. Ask for tags
    echo -ne "$(get_string add_tags_q) "
    read -r add_tags_choice
    if [[ $add_tags_choice =~ ^[Yy][Ee][Ss]$ ]]; then
        echo -e "${YELLOW}$(get_string enter_tag)${NC}"
        while true; do
            read -r tag
            if [[ "$tag" == "/go" ]]; then
                break
            fi
            if [[ " ${tags_array[*]} " =~ " ${tag} " ]]; then
                echo -e "${RED}$(get_string tag_exists)${NC}"
            else
                tags_array+=("$tag")
            fi
        done
    fi
    # Create the JSON tags string
    tags=""
    for tag in "${tags_array[@]}"; do
        tags+=\"$tag\",
    done
    tags="${tags%,}" # Remove the last comma

    # 5. Ask for the sprite name
    echo -ne "$(get_string enter_sprite_name)"
    read -r name

    # 6. Build the JSON entry and add it
    new_json_entry=$(cat <<EOF
    {
        "name": "$name",
        "tags": [
            $tags
        ],
        "assetId": "$asset_id",
        "bitmapResolution": $bitmap_res,
        "dataFormat": "$format",
        "md5ext": "$asset_id_md5ext",
        "rotationCenterX": $rot_x,
        "rotationCenterY": $rot_y
    }
EOF
)

    # Simulate adding to a file
    # Note: In a real-world scenario, you would need to insert this into the existing JSON.
    # For this example, we can just display it or write it to a file.
    echo "$new_json_entry" > "$json_output_file"
    echo -e "\\n${GREEN}$(get_string json_generated)${NC}"
    read -r
}

# Function to handle option 1
select_existing_folder() {
    clear
    echo -e "${GREEN}==========================================${NC}"
    echo -e "${YELLOW}$(get_string select_folder_title)${NC}"
    echo -e "${GREEN}==========================================${NC}"

    folder_path=$(zenity --file-selection --directory --title="$(get_string select_folder_title)" 2>/dev/null)

    if [[ -z "$folder_path" ]]; then
        echo -e "\n${RED}$(get_string no_folder_selected)${NC}"
        echo "$(get_string press_enter)"
        read
    else
        echo -e "\n${GREEN}Dossier sélectionné : ${folder_path}${NC}"
        echo "$(get_string press_enter)"
        read
    fi
}

# Function to handle option 2
download_and_prepare() {
    clear
    echo -e "${GREEN}==========================================${NC}"
    echo -e "${YELLOW}$(get_string prepare_title)${NC}"
    echo -e "${GREEN}==========================================${NC}"

    echo -e "${CYAN}$(get_string downloading)${NC}"
    wget -q --show-progress https://github.com/TurboWarp/scratch-gui/archive/refs/heads/develop.zip -O scratch-gui-develop.zip
    wget -q --show-progress https://github.com/TurboWarp/scratch-vm/archive/refs/heads/develop.zip -O scratch-vm-develop.zip
    echo -e "${GREEN}$(get_string download_complete)${NC}"

    echo -e "\n${CYAN}$(get_string enter_folder_name)${NC}"
    read -r project_name
    while [[ -z "$project_name" ]]; do
        echo -e "${RED}$(get_string name_cannot_be_empty)${NC}"
        read -r project_name
    done

    echo -e "\n${CYAN}$(get_string enter_folder_path)${NC}"
    echo -e "${YELLOW}$(get_string leave_empty)${NC}"
    read -r project_path

    if [[ -z "$project_path" ]]; then
        target_dir="./$project_name"
    else
        target_dir="$project_path/$project_name"
    fi

    echo -e "${CYAN}$(get_string creating_folder)${target_dir}${NC}"
    mkdir -p "$target_dir"
    
    echo -e "${CYAN}$(get_string moving_archives)${NC}"
    mv scratch-gui-develop.zip scratch-vm-develop.zip "$target_dir/"

    echo -e "${CYAN}$(get_string unzipping)${NC}"
    unzip -q "$target_dir/scratch-gui-develop.zip" -d "$target_dir/"
    unzip -q "$target_dir/scratch-vm-develop.zip" -d "$target_dir/"
    
    echo -e "${CYAN}$(get_string deleting_zips)${NC}"
    rm "$target_dir/scratch-gui-develop.zip" "$target_dir/scratch-vm-develop.zip"
    
    echo -e "\n${GREEN}$(get_string preparation_complete)${target_dir}${NC}"
    echo "$(get_string press_enter)"
    read
}

# Function to handle option 3
execute_project() {
    clear
    echo -e "${GREEN}==========================================${NC}"
    echo -e "${YELLOW}$(get_string execute_title)${NC}"
    echo -e "${GREEN}==========================================${NC}"

    if ! command -v npm &> /dev/null; then
        echo -e "${RED}$(get_string npm_not_found)${NC}"
        echo "$(get_string press_enter)"
        read
        return
    fi
    
    echo -e "${CYAN}$(get_string enter_project_path)${NC}"
    read -r project_path

    if [[ ! -d "$project_path/scratch-vm-develop" || ! -d "$project_path/scratch-gui-develop" ]]; then
        echo -e "${RED}$(get_string folders_not_found)${NC}"
        echo "$(get_string path_info)"
        echo "$(get_string press_enter)"
        read
        return
    fi

    echo -e "${CYAN}$(get_string launching)${NC}"
    
    echo -e "\n${YELLOW}$(get_string executing_vm)${NC}"
    cd "$project_path/scratch-vm-develop" || { echo -e "${RED}Error: Cannot change directory.${NC}"; read; return; }
    npm install
    npm link

    echo -e "\n${YELLOW}$(get_string executing_gui)${NC}"
    cd "$project_path/scratch-gui-develop" || { echo -e "${RED}Error: Cannot change directory.${NC}"; read; return; }
    npm install
    npm link scratch-vm

    echo -e "\n${YELLOW}$(get_string starting_server)${NC}"
    npm start &
    
    sleep 10
    
    if command -v xdg-open &> /dev/null; then
        xdg-open "http://localhost:8601/"
    else
        echo -e "${YELLOW}$(get_string browser_error)${NC}"
    fi

    echo -e "\n${GREEN}$(get_string server_running)${NC}"
    echo "$(get_string press_enter)"
    read
}

# Function to choose the language
choose_language() {
    clear
    echo -e "${GREEN}==========================================${NC}"
    echo -e "${YELLOW}$(get_string language_choice)${NC}"
    echo -e "${GREEN}==========================================${NC}"
    echo -e "${CYAN}1. English${NC}"
    echo -e "${CYAN}2. Español${NC}"
    echo -e "${CYAN}3. Français${NC}"
    echo -e "${GREEN}------------------------------------------${NC}"
    echo -ne "$(get_string choose_option)"
    read -r lang_choice
    case "$lang_choice" in
        1)
            LANGUAGE="en"
            echo -e "\n${GREEN}$(get_string language_changed)English.${NC}"
            sleep 2
            ;;
        2)
            LANGUAGE="es"
            echo -e "\n${GREEN}$(get_string language_changed)Español.${NC}"
            sleep 2
            ;;
        3)
            LANGUAGE="fr"
            echo -e "\n${GREEN}$(get_string language_changed)Français.${NC}"
            sleep 2
            ;;
        *)
            echo -e "\n${RED}$(get_string invalid_option)${NC}"
            sleep 2
            ;;
    esac
}

# Main program loop
while true; do
    show_menu
    read -r choice
    case "$choice" in
        1)
            select_existing_folder
            ;;
        2)
            download_and_prepare
            ;;
        3)
            execute_project
            ;;
        4)
            choose_language
            ;;
        5)
            show_modification_menu
            ;;
        6)
            echo -e "${YELLOW}$(get_string goodbye)${NC}"
            exit 0
            ;;
        *)
            echo -e "\\n${RED}$(get_string invalid_option)${NC}"
            sleep 2
            ;;
    esac
done
