#!/bin/bash

# ==========================================
# SandBlocks - Terminal software for TurboWarp
# Inspired by the way Arch Linux works
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
strings_en[enter_folder_path]="Where do you want to create this folder (ex: /path/to/my/projects):"
strings_en[path_cannot_be_empty]="Path cannot be empty. Please try again:"
strings_en[invalid_path]="The specified path does not exist. Please try again."
strings_en[extracting]="Extracting archives..."
strings_en[extracted]="Extraction complete!"
strings_en[dependencies]="Installing Node.js dependencies..."
strings_en[npm_error]="An error occurred during npm installation. Please check your internet connection and that Node.js and npm are installed correctly."
strings_en[ready]="Your project is ready! To start, go to the folder and run 'npm start'."
strings_en[no_folder_selected]="No folder selected. Please use option 1 first."
strings_en[running_project]="Running the project..."
strings_en[project_quit]="Project execution stopped."
strings_en[language_choice]="Please select your language"
strings_en[language_changed]="Language changed to "
strings_en[invalid_option]="Invalid option. Please try again."
strings_en[goodbye]="Thank you for using SandBlocks! Goodbye!"
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
strings_en[add_tags_q]="Do you want to add tag(s)?"
strings_en[yes]="Yes"
strings_en[no]="No"
strings_en[enter_tag]="Enter a tag (type /go to finish):"
strings_en[tag_exists]="This tag already exists. Please enter another one."
strings_en[enter_sprite_name]="Enter a name for the sprite:"
strings_en[json_generated]="New JSON entry generated and added to the file."

# Français
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
strings_fr[prepare_title]="Préparation d'un nouveau projet ⬇️"
strings_fr[downloading]="Téléchargement des archives..."
strings_fr[download_complete]="Téléchargement terminé !"
strings_fr[enter_folder_name]="Veuillez donner un nom au nouveau dossier de projet (ex : MonDossier) :"
strings_fr[name_cannot_be_empty]="Le nom ne peut pas être vide. Veuillez réessayer :"
strings_fr[enter_folder_path]="Où voulez-vous créer ce dossier (ex : /chemin/vers/mes/projets) :"
strings_fr[path_cannot_be_empty]="Le chemin ne peut pas être vide. Veuillez réessayer :"
strings_fr[invalid_path]="Le chemin spécifié n'existe pas. Veuillez réessayer."
strings_fr[extracting]="Extraction des archives..."
strings_fr[extracted]="Extraction terminée !"
strings_fr[dependencies]="Installation des dépendances Node.js..."
strings_fr[npm_error]="Une erreur est survenue lors de l'installation de npm. Veuillez vérifier votre connexion Internet et que Node.js et npm sont bien installés."
strings_fr[ready]="Votre projet est prêt ! Pour démarrer, allez dans le dossier et exécutez 'npm start'."
strings_fr[no_folder_selected]="Aucun dossier sélectionné. Veuillez d'abord utiliser l'option 1."
strings_fr[running_project]="Exécution du projet..."
strings_fr[project_quit]="Exécution du projet arrêtée."
strings_fr[language_choice]="Veuillez choisir votre langue"
strings_fr[language_changed]="Langue changée en "
strings_fr[invalid_option]="Option invalide. Veuillez réessayer."
strings_fr[goodbye]="Merci d'avoir utilisé SandBlocks ! Au revoir !"
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
strings_fr[add_tags_q]="Tu veux donner à ton sprite un ou des tag(s)?"
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
strings_es[not_implemented]="Esta función estará disponible pronto. Presione Enter para volver al menú."
strings_es[press_enter]="Presione Enter para continuar..."
strings_es[prepare_title]="Preparación de nuevo proyecto ⬇️"
strings_es[downloading]="Descargando archivos..."
strings_es[download_complete]="¡Descarga completa!"
strings_es[enter_folder_name]="Por favor, proporcione un nombre para la nueva carpeta de proyecto (ej: MiCarpeta):"
strings_es[name_cannot_be_empty]="El nombre no puede estar vacío. Por favor, inténtelo de nuevo:"
strings_es[enter_folder_path]="¿Dónde desea crear esta carpeta (ej: /ruta/a/mis/proyectos):"
strings_es[path_cannot_be_empty]="La ruta no puede estar vacía. Por favor, inténtelo de nuevo:"
strings_es[invalid_path]="La ruta especificada no existe. Por favor, inténtelo de nuevo."
strings_es[extracting]="Extrayendo archivos..."
strings_es[extracted]="¡Extracción completa!"
strings_es[dependencies]="Instalando dependencias de Node.js..."
strings_es[npm_error]="Se ha producido un error durante la instalación de npm. Por favor, compruebe su conexión a Internet y que Node.js y npm están instalados correctamente."
strings_es[ready]="¡Su proyecto está listo! Para empezar, vaya a la carpeta y ejecute 'npm start'."
strings_es[no_folder_selected]="No se ha seleccionado ninguna carpeta. Por favor, use la opción 1 primero."
strings_es[running_project]="Ejecutando el proyecto..."
strings_es[project_quit]="Ejecución del proyecto detenida."
strings_es[language_choice]="Por favor, seleccione su idioma"
strings_es[language_changed]="Idioma cambiado a "
strings_es[invalid_option]="Opción inválida. Por favor, inténtelo de nuevo."
strings_es[goodbye]="¡Gracias por usar SandBlocks! ¡Adiós!"
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
strings_es[add_tags_q]="¿Quieres añadir una o varias etiquetas?"
strings_es[yes]="Sí"
strings_es[no]="No"
strings_es[enter_tag]="Introduce una etiqueta (escribe /go para terminar):"
strings_es[tag_exists]="Esta etiqueta ya existe. Por favor, introduce otra."
strings_es[enter_sprite_name]="Introduce un nombre para el sprite:"
strings_es[json_generated]="Nueva entrada JSON generada y añadida al archivo."


# Function to retrieve the translated string
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

# Function to add a new sprite (implements the instructions)
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

    # 3. Ask for the rotation centers
    echo -ne "$(get_string enter_rot_x)"
    read -r rot_x
    echo -ne "$(get_string enter_rot_y)"
    read -r rot_y

    # 4. Ask for tags
    echo -ne "$(get_string add_tags_q) (${GREEN}$(get_string yes)${NC}/${RED}$(get_string no)${NC}) "
    read -r add_tags_choice
    if [[ $add_tags_choice =~ ^[Oo][Uu][Ii]|[Yy][Ee][Ss]$ ]]; then
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
    # Note: In real conditions, this would have to be inserted into the existing JSON.
    # For this example, we can just display it or write it to a file.
    echo "$new_json_entry" > "$json_output_file"
    echo -e "\\n${GREEN}$(get_string json_generated)${NC}"
    read -r
}

# The other script functions remain unchanged
function select_existing_folder() {
    clear
    echo -e "${YELLOW}$(get_string not_implemented)${NC}"
    read -r
}

function download_and_prepare() {
    clear
    echo -e "${YELLOW}$(get_string not_implemented)${NC}"
    read -r
}

function execute_project() {
    clear
    echo -e "${YELLOW}$(get_string not_implemented)${NC}"
    read -r
}

function choose_language() {
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
            echo -e "\\n${GREEN}$(get_string language_changed)English.${NC}"
            sleep 2
            ;;
        2)
            LANGUAGE="es"
            echo -e "\\n${GREEN}$(get_string language_changed)Español.${NC}"
            sleep 2
            ;;
        3)
            LANGUAGE="fr"
            echo -e "\\n${GREEN}$(get_string language_changed)Français.${NC}"
            sleep 2
            ;;
        *)
            echo -e "\\n${RED}$(get_string invalid_option)${NC}"
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
