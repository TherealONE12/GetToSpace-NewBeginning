##  GetToSpace-NewBeginning

<div align="center">

[![GitHub stars](https://img.shields.io/github/stars/TherealONE12/GetToSpace-NewBeginning?style=for-the-badge)](https://github.com/TherealONE12/GetToSpace-NewBeginning/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/TherealONE12/GetToSpace-NewBeginning?style=for-the-badge)](https://github.com/TherealONE12/GetToSpace-NewBeginning/network)
[![GitHub issues](https://img.shields.io/github/issues/TherealONE12/GetToSpace-NewBeginning?style=for-the-badge)](https://github.com/TherealONE12/GetToSpace-NewBeginning/issues)
[![GitHub license](https://img.shields.io/github/license/TherealONE12/GetToSpace-NewBeginning?style=for-the-badge)](LICENSE)

**Embark on an epic journey through the cosmos in this action-packed Godot-powered space adventure.**

</div>

## 📖 Overview

GetToSpace-NewBeginning is a 2D space-themed game developed with the Godot Engine. 


## 🛠️ Tech Stack

**Game Engine:**
[![Godot Engine](https://img.shields.io/badge/Godot_Engine-4.x-478cbf?style=for-the-badge&logo=godot-engine&logoColor=white)](https://godotengine.org/)

**Programming Language:**
[![GDScript](https://img.shields.io/badge/GDScript-4.x-478cbf?style=for-the-badge&logo=godot-engine&logoColor=white)](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/index.html)

**Assets:**
[![MP3](https://img.shields.io/badge/Audio-MP3-green?style=for-the-badge&logo=itunes&logoColor=white)](https://en.wikipedia.org/wiki/MP3)
[![PNG](https://img.shields.io/badge/Images-PNG-blue?style=for-the-badge&logo=image-line&logoColor=white)](https://en.wikipedia.org/wiki/Portable_Network_Graphics)
[![SVG](https://img.shields.io/badge/Vector_Graphics-SVG-orange?style=for-the-badge&logo=svg&logoColor=white)](https://en.wikipedia.org/wiki/Scalable_Vector_Graphics)

## 🚀 Quick Start

To get this project up and running for development or to play a pre-built version.

### Prerequisites

-   **Godot Engine 4.x**: The game is developed using Godot Engine. You can download it from the [official Godot website](https://godotengine.org/download).
    *   It's recommended to use the latest stable version of Godot 4.

### Installation

1.  **Clone the repository**
    ```bash
    git clone https://github.com/TherealONE12/GetToSpace-NewBeginning.git
    cd GetToSpace-NewBeginning
    ```

### Development Setup

1.  **Open the project in Godot Engine**
    *   Launch Godot Engine.
    *   In the Project Manager, click on `Import`.
    *   Navigate to the cloned `GetToSpace-NewBeginning` directory and select the `project.godot` file.
    *   Click `Open & Edit`.

2.  **Run the game in the editor**
    *   Once the project is open in the Godot editor, you can run the game by pressing the `Play` button or by pressing `F5`.

### Running a Pre-built Game (Linux Example)

A pre-built Linux executable is included in the repository for quick testing:

1.  **Ensure executable permissions**
    ```bash
    chmod +x ouch-x86_64-linux-musl
    ```

2.  **Run the game**
    ```bash
    ./ouch-x86_64-linux-musl
    ```

## 📁 Project Structure

```
GetToSpace-NewBeginning/
├── .editorconfig
├── .gitattributes
├── .gitignore
├── .wakatime.cfg
├── LICENSE
├── LICENSE.md
├── README.md
├── addons/                         
├── boss_1.gd                       # GDScript for Boss 1 logic
├── boss_1.gd.uid
├── builds/                         # Directory for exported game builds
├── character_body_2d.gd            # GDScript for player/character movement and physics
├── character_body_2d.gd.uid
├── demo_splash_screen_wizard/      
├── export_presets.cfg              # Godot export configuration presets
├── freesound_community-teleport-14639.mp3 # Sound effect asset
├── freesound_community-teleport-14639.mp3.import
├── gradiants/                      # Placeholder for gradient textures/shaders (currently empty)
├── icon.png                        # Project icon (PNG format)
├── icon.png.import
├── icon.svg                        # Project icon (SVG format)
├── icon.svg.import
├── images/                         # General image assets (sprites, backgrounds)
├── music_manager.gd                # GDScript for managing background music and sound effects
├── music_manager.gd.uid
├── musik/                          # Music assets
├── project.godot                   # Main Godot project configuration file
├── scenes/                         # Game scenes (e.g., levels, main menu, player scene)
```

## ⚙️ Configuration

### Godot Project Settings
The primary configuration for the game is located in `project.godot`. This file defines:
-   **Display settings**: Resolution, window mode.
-   **Input Map**: Keyboard, mouse, and gamepad bindings.
-   **Autoloads**: Global scripts like `music_manager.gd` that are loaded at startup.
-   **Rendering settings**, physics layers, and more.

You can modify these settings directly within the Godot Editor via `Project -> Project Settings...`.

### Export Presets
`export_presets.cfg` contains configurations for exporting the game to different platforms (e.g., Linux, Windows, macOS, Web, Android). These presets can be managed and modified through the `Project -> Export...` menu in the Godot Editor.

## 🚀 Deployment

### Exporting the Game
1.  Open the project in the Godot Editor.
2.  Go to `Project -> Export...`.
3.  Choose an existing preset (e.g., Linux/X11, Windows Desktop). If no preset exists for your desired platform, add one.
4.  Configure the export options (e.g., target path, custom templates).
5.  Click `Export Project` to generate a standalone executable for your chosen platform.

### Continuous Integration/Deployment
While not explicitly configured, Godot projects can be integrated into CI/CD pipelines using command-line export tools.

## 🤝 Contributing

We welcome contributions to "GetToSpace-NewBeginning"! If you're interested in helping improve the game, please consider:

1.  **Forking the repository.**
2.  **Creating a new branch** for your feature or bug fix.
3.  **Making your changes** and ensuring they adhere to the existing code style.
4.  **Testing your changes** thoroughly.
5.  **Submitting a pull request** with a clear description of your changes.

### Development Setup for Contributors
Follow the "Development Setup" steps above to get the project running in your Godot Editor.

## 📄 License

This project is licensed under the [MIT License](LICENSE) - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

-   **Godot Engine Community**: For providing an incredible open-source game engine.
-   **Freesound.org**: For the teleport sound effect used in the project.
-   **WakaTime**: For development insights
-   **the_mountain**: Muscician from Pixabay
-   **OpenGameArts**: The other music in musik/background
-   **alexis_gaming_cam**: Muscician from Pixabay
-   **dragon-studio**: Muscician from Pixabay
-   **flutie8211**: Muscician from Pixabay
-   **freesound-community**: Muscician from Pixabay
-   **u_qqkrn9bn55**: Muscician from Pixabay
-   **universfield**: Muscician from Pixabay

## 📞 Support & Contact

-   🐛 Issues: If you encounter any bugs or have feature requests, please open an issue on [GitHub Issues](https://github.com/TherealONE12/GetToSpace-NewBeginning/issues).


---

<div align="center">

**⭐ Star this repo if you find it helpful!**

Made with ❤️ by [TherealONE12](https://github.com/TherealONE12)

</div>
