<p align="center">
    <img src="https://github.com/AlexandrosLiaskos/TauNest/assets/128935863/85fdfeed-fc2f-4c9d-9019-0e089b45c45f" alt="TauNest" width="250"/>
</p>
<h1 align="center">
    Effortless Native Apps for Your Favorite Websites
</h1>

TauNest revolutionizes the way you interact with your favorite websites by allowing you to convert them into native applications. It is comprised of an algorithm implemented as a series of commands in a Bash script, designed to automate the creation of lightweight and efficient desktop apps using web technologies. This project leverages Tauri, a tool for building secure, multi-platform desktop applications with a web front-end, to deliver a seamless experience. Additionally, TauNest utilizes Charm's Gum to enhance the user-friendliness of the script's outcomes, providing interactive prompts and inputs for a more intuitive experience. 

![Github_TauNest](https://github.com/AlexandrosLiaskos/TauNest/assets/128935863/d92b65c5-cd63-4dce-bf96-d295b868678b)

https://github.com/AlexandrosLiaskos/TauNest/assets/128935863/77ebb2de-66ab-4b91-8af9-2f4c04804e53


## Overview of Technologies

- [**Tauri**](https://github.com/tauri-apps/tauri):

  A framework, built on Rust, for building secure, lightweight, and cross-platform desktop applications using web technologies like HTML, CSS and JavaScript.
  
- [**Gum**](https://github.com/charmbracelet/gum):

  A toolkit for creating interactive and user-friendly command-line interfaces (CLIs) with a focus on simplicity and customization.
  
- [**Webview:**](https://github.com/webview/webview)

  A web browser that is embedded within the native application window of the Tauri app, in order to "nest" the content of the website.
  
- [**WRY:**](https://github.com/tauri-apps/wry)

  A cross-platform WebView rendering library in Rust that supports all major desktop platforms like Windows, macOS, and Linux.

- [**Rust:**](https://github.com/rust-lang/rust)

  A systems programming language known for its focus on safety, speed, and concurrency, making it ideal for high-performance applications and secure software development.

- [**Bash:**](https://www.gnu.org/software/bash/#navigation)

  A Unix shell and command language widely used for scripting and automating tasks in Linux and Unix-based operating systems.

## Prerequisites

- **Operating System:** [Arch Linux](https://archlinux.org/).
- **Shell:** [Bash](https://www.gnu.org/software/bash/#navigation) support in the terminal.

_Note: Support for additional operating systems and shells is currently under development._

## Installation and Usage

To use TauNest, follow these steps:

1. **Clone the Repository:**
   
   ```bash
   git clone https://github.com/AlexandrosLiaskos/TauNest.git
   cd TauNest

2. **Make the Bash Script Executable:**
   
   ```bash
   chmod +x TauNest_Arch.sh
3. **Run the script:**
   
   ```bash
   ./TauNest_Arch.sh
   
## Getting Started

1. **User Input:**

     - **The project name** (Title of the app)
     - **Desired directory** (Where the Tauri application files will be stored)
     - **Website URL** (Of the desired website)
     - **Optional Icon file directory** (The icon of the desktop app)
      
3. **Environment Setup:**
   
   Automatically installs and updates the necessary packages, including the Tauri CLI and Gum.
4. **Project Initialization:**
   
   Sets up a new Tauri project in the specified directory and configures it to render the desired website.
5. **App Configuration:**
   
   Fine-tunes the Tauri configuration using `jq`, setting up the app's properties and behavior.
6. **Building the App:**
   
   Compiles the project into a native executable.
7. **Icon Customization:**
    
    Offers the option to set a custom icon for the app.

## Running the App

After installation, the app can be run like any native application on your system, providing a fast and efficient desktop application environment.

## Why Choose Tauri/Rust Web Apps Over PWAs?

1. **Performance:**
   
  Tauri leverages the Rust programming language, known for its speed and efficiency. This results in faster startup times and smoother performance compared to typical PWAs, which can be bogged down by browser overhead.

2. **Customization Options:**

    ###### Customizing the App Window

    - **Window Size and Position**: Set the initial size and position of your app window to ensure optimal display of the nested website.
    - **Window Title**: Customize the title of your app window to reflect your app or the website being nested.
    - **Fullscreen Mode**: Add an option to toggle fullscreen mode for a distraction-free viewing experience.

    ###### Navigation Controls

    - **Back and Forward Buttons**: Implement back and forward navigation buttons to allow easy navigation through browsing history.
    - **Refresh Button**: Add a refresh button to enable users to reload the current page.
    - **Address Bar (Optional)**: Include an address bar to display the current URL and allow navigation to different websites, if appropriate.

    ###### Custom Menus and Shortcuts

    - **Custom Menus**: Create custom menus for quick access to frequently used features like navigation controls, settings, or help.
    - **Keyboard Shortcuts**: Implement shortcuts for common actions like refresh, back, forward, and fullscreen toggle.

    ###### Integration with the System Tray

    - **System Tray Icon**: Add an icon to the system tray for quick access or to hide the app when not in use.
    - **Context Menu**: Provide a context menu for the system tray icon with options to open the app, check for updates, or quit.

    ###### Security and Privacy

    - **Webview Security**: Ensure the webview used to nest the website has appropriate security settings, such as disabling unnecessary JavaScript.
    - **Privacy Settings**: Offer settings to clear browsing history, cookies, or cache for user privacy.

    ###### User Preferences

    - **Settings Page**: Create a settings page for users to customize aspects like default window size, preferred start page, or system tray behavior.
    - **Remember Last Session**: Add an option to remember the last visited page and window size for a seamless user experience.

4. **Security:**
   
   Rust's strong type system and memory safety features reduce the risk of security vulnerabilities. Tauri further enhances security by using a minimal webview and restricting access to system resources, providing a sandboxed environment for your app.
   
7. **Reduced Resource Usage:**
  
   Tauri apps are lightweight and consume fewer system resources compared to traditional desktop applications or PWAs running in a browser. This leads to better battery life and a more responsive user experience.

## Screenshots

1. **GitHub:**

![240324_19h33m29s_screenshot](https://github.com/AlexandrosLiaskos/TauNest/assets/128935863/1d180e92-a9e0-4502-b4df-5eaccb6d129f)

![Github_TauNest](https://github.com/AlexandrosLiaskos/TauNest/assets/128935863/d92b65c5-cd63-4dce-bf96-d295b868678b)

2. **Gemini:**

![240324_20h22m58s_screenshot](https://github.com/AlexandrosLiaskos/TauNest/assets/128935863/9ea26976-28b4-402b-bda3-b30f41db8990)

![240324_20h23m15s_screenshot](https://github.com/AlexandrosLiaskos/TauNest/assets/128935863/dffcaf4d-c613-4638-9cdd-498f65c33086)


## Non-Automated Alternative

### Prerequisites

Before starting, make sure you have installed the prerequisites for your OS:

- [Tauri Prerequisites](https://tauri.app/v1/guides/getting-started/prerequisites)

### Creating a New Tauri Project

1. **Initialize a new project**:

   Run the following command and follow the prompts:

   ```bash
   npm create tauri-app@latest
   ```

   - **Project Name**: Choose a name for your app.
   - **Package Name**: If the project name contains spaces or uppercase letters, you'll need to input a package name that's compatible with npm syntax.
   - **Frontend Language**: Selecting Rust is preferred for simplicity in the building process.
   - **UI Template**: Choose "Vanilla" for a simple and lightweight configuration.

### Configuring the Project

1. **Navigate to your project directory**:

   ```bash
   cd your-project-name
   ```

2. **Modify the build configuration** in `src-tauri/tauri.conf.json`:

   ```json
   "build": {
       "distDir": "website/link",
       "devPath": "website/link"
   },
   ```

   Replace `website/link` with the URL of the website you want your web app to open.

3. **Modify the window configuration**:

   ```json
   "windows": [
       {
           "title": "Your App Title",
           "width": 1400,
           "height": 600,
           "center": true,
           "decorations": false,
           "resizable": true,
           "alwaysOnTop": false,
           "skipTaskbar": false
       }
   ]
   ```

4. **Modify the bundle identifier**:

   Change the bundle identifier in `tauri.conf.json > tauri > bundle > identifier` to something unique, like `com.projectname.app`.

### Configuring the App's Icon

1. Download an icon in PNG format (512x512 pixels) from sites like [Iconduck](https://iconduck.com/) [Flaticon](https://www.flaticon.com/).
2. Use Tauri's icon generator to create the necessary icon files:

   ```bash
   cargo tauri icon "path/to/your/icon.png" -o "src-tauri/icons/"
   ```

### Building the Tauri App

1. **Initialize a Cargo project**:

   ```bash
   cargo init
   ```

2. **Build the Tauri app**:

   ```bash
   cargo tauri build
   ```

### Installing the Tauri App

1. **Navigate to the release bundle**:

   ```bash
   cd src-tauri/target/release/bundle/
   ```

2. **Run the application installer** (the process may differ depending on your OS).

3. **Enjoy your new Tauri app!**

### Documentation

For more information, refer to the [Tauri documentation](https://tauri.app/v1/guides/).

## Conclusion

TauNest leverages cutting-edge technologies like Tauri and Gum to make the process of creating desktop applications from websites seamless and interactive. With its current support for Arch Linux and plans for future expansion, TauNest is poised to become an essential tool for web and desktop application developers.
