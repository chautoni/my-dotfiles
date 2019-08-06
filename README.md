# zsh antibody installation
```sh
brew install getantibody/tap/antibody
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
# ~/.zshrc
source ~/.zsh_plugins.sh
```
# iTerm2 material shell
- iTerm > Preferences > Profiles > Colors Tab.
- Color Presets ... > Load Presets > Import.
- Select one of the themes located at shell-color-themes/macOS/iterm. 👇
- Color Presets ... > Load Presets and select the one you've imported at step 3.
- Set as default the profile with the materialshell theme Profiles > Other Actions ... > Set as default.

# Ramdisk usage
- Moving RubyMine cache folder to Ramdisk
- Moving tmp & log folder to Ramdisk
- Moving PostgreSQL test folder to Ramdisk
- Auto sync RubyMine cache to hard disk every 600 seconds
```sh
sh updev.sh
```
