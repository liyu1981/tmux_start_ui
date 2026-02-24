# tmux-start-ui

A mouse-friendly `tmux` configuration that adds interactive menus for common tasks, making it easier to manage sessions, windows, and panes without memorizing every shortcut.

![Usage Demo](./tmux_start_ui_usage.gif)

## Installation

### Quick One-Line Installation
Run the following command to download and run the installation script, which clones the repository to `~/.tmux-start-ui` and updates your `~/.tmux.conf`:
```bash
curl -sL https://raw.githubusercontent.com/liyu1981/tmux-start-ui/main/install.sh | bash
```

### Method 1: Clone and Source (Recommended)
This method allows you to keep the configuration updated by simply pulling the latest changes from the repository.

1. Clone the repository:
   ```bash
   git clone https://github.com/liyu1981/tmux-start-ui.git ~/tmux-start-ui
   ```
2. Source the `tmux.conf` file in your main `~/.tmux.conf`:
   ```tmux
   source-file ~/tmux-start-ui/tmux.conf
   ```
3. Reload your tmux configuration:
   ```bash
   tmux source-file ~/.tmux.conf
   ```

### Method 2: Copy and Append
If you prefer to have everything in one file, you can append the configuration to your existing `~/.tmux.conf`.

1. Append the contents to your `~/.tmux.conf`:
   ```bash
   cat tmux.conf >> ~/.tmux.conf
   ```
2. Reload your tmux configuration:
   ```bash
   tmux source-file ~/.tmux.conf
   ```
   *Or use the "Reload Config" option from the UI!*

## Features

- **Mouse Support**: Enable scrolling, pane selection, and resizing with the mouse.
- **Context Menus**:
    - **Right-Click on Pane**: Quick access to split, kill, or create new windows/sessions.
    - **Status Bar Click**: Left-click the bottom status bar to open a comprehensive management menu.
- **Keyboard Shortcut**: Press `Prefix + m` to trigger the UI menu at any time.
- **Clipboard Support**: Integrated OSC 52 clipboard support for seamless copying.

## Included Menus

The interactive menus provide quick shortcuts for:
- Splitting windows (Horizontal/Vertical)
- Creating and Switching Windows/Sessions
- Copy Mode management
- Config Reloading
- Detaching and Killing sessions

## License

MIT

---
**Keywords**: tmux, terminal-ui, productivity, mouse-support, configuration, interactive-menu, dev-tools
