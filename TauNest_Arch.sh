#!/bin/bash

# Function to install required packages
install_packages() {
    needed_packages=(webkit2gtk base-devel curl wget file openssl appmenu-gtk-module gtk3 libappindicator-gtk3 librsvg libvips npm gum jq)
    for package in "${needed_packages[@]}"; do
        if ! pacman -Q $package &>/dev/null; then
            echo "Installing $package..."
            sudo pacman -S $package --noconfirm || {
                echo "Failed to install $package. Exiting..."
                exit 1
            }
        else
            echo "$package is already installed."
            # Check if an update is available
            if pacman -Qu $package &>/dev/null; then
                echo "Updating $package..."
                sudo pacman -Syu $package --noconfirm
            else
                echo "$package is up-to-date."
            fi
        fi
    done
}

# Function to setup Rust and Tauri CLI
setup_rust() {
    # Ensure rustup is installed
    if ! command -v rustup &>/dev/null; then
        echo "Installing rustup..."
        curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
        source "$HOME/.cargo/env"
    fi

    # Install tauri-cli if not already installed
    if ! cargo install tauri-cli &>/dev/null; then
        cargo install tauri-cli || {
            echo "Failed to install tauri-cli. Exiting..."
            exit 1
        }
    fi
}

# Function to create and configure Tauri project
create_tauri_project() {
    project_name=$(gum input --placeholder "Enter Tauri app project name (lowercase only):" | tr '[:upper:]' '[:lower:]')
    app_directory="$HOME/apps"
    mkdir -p "$app_directory"
    website_link=$(gum input --placeholder "Enter website link:")

    cd "$app_directory" || exit 1
    npm create tauri-app@latest "$project_name" || exit 1
    cd "$project_name" || exit 1

    # Update tauri.conf.json
    jq -r --arg website_link "$website_link" --arg project_name "$project_name" '
    .build.distDir = $website_link |
    .build.devPath = $website_link |
    .package.productName = $project_name |
    .tauri.bundle.identifier = "com." + $project_name + ".app" |
    .tauri.windows = [{"title": $project_name, "width": 1400, "height": 600, "center": true, "decorations": false, "resizable": true, "alwaysOnTop": false, "skipTaskbar": false}] |
    del(.build.withGlobalTauri)
    ' src-tauri/tauri.conf.json > tmp.json && mv tmp.json src-tauri/tauri.conf.json
}

# Function to build Tauri app
build_tauri_app() {
    export NO_STRIP=true
    cargo tauri build || {
        echo "Failed to build Tauri app. Exiting..."
        exit 1
    }
}

# Function to create .desktop file
create_desktop_file() {
    # Find the AppImage file
    appimage_file=$(find "$app_directory/$project_name/src-tauri/target/release/bundle/" -name "*.AppImage" -print -quit)

    # Ensure the AppImage file was found
    if [ -z "$appimage_file" ]; then
        echo "AppImage file not found. Exiting..."
        exit 1
    fi

    desktop_file="$HOME/.local/share/applications/$project_name.desktop"

    echo "[Desktop Entry]
    Type=Application
    Name=$project_name
    Exec=$appimage_file
    Icon=
    Terminal=false
    Categories=Utility;" > "$desktop_file"

    if gum confirm "Would you like to set a local icon for the app?"; then
        icon_path=$(gum input --placeholder "Enter the full path to the icon:")
        sed -i "s|Icon=|Icon=$icon_path|" "$desktop_file"
    fi

    # Update desktop database
    update-desktop-database ~/.local/share/applications

    echo "Tauri app build complete! Find your app in $app_directory/$project_name/src-tauri/target/release/bundle/"
    echo "Desktop entry created at $desktop_file"
}

# Main script execution
install_packages
setup_rust
create_tauri_project
build_tauri_app
create_desktop_file

