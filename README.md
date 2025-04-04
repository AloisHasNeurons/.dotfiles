# .dotfiles

These are my personal configuration files for Linux. They’re managed via a Git repository and symlinks.

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/USERNAME/dotfiles.git ~/.dotfiles
   ```
2. **Symlink the desired config files** (replace `.bashrc` with any config you want):
   ```bash
   ln -s ~/.dotfiles/.bashrc ~/.bashrc
   ```

## Usage

- **Edit configs** directly in `~/.dotfiles`.
- **Commit changes**:
   ```bash
   cd ~/.dotfiles
   git add .
   git commit -m "Update configs"
   git push
   ```
- **Pull updates** on another machine to sync:
   ```bash
   cd ~/.dotfiles
   git pull
   ```