if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""

function fish_prompt
    set_color -o 2B5BB7 # Set foreground color to blue
    echo -n '┌─╴'

    if test "$USER" = "root"
        set_color -o C80A12 # Set foreground color to red for root user
    else
        set_color -o blue # Set foreground color to blue for regular user
    end


    echo -n '('(date +%R)')'

    set_color -o 2B5BB7
    echo -n '-['

    set_color -o white # Set foreground color to white(directory)
    echo -n (pwd)

    set_color -o 2B5BB7
    echo -n ']'

    set_color -o 2B5BB7
    echo '' # Newline in Fish shell

    echo -n '└╴'
    if test "$USER" = "root"
        set_color -o C80A12 # Set foreground color to red for root user
	echo -n '#'
    else
        set_color -o 2B5BB7 # Set foreground color to blue for regular user
	echo -n '❯'
    end

    set_color normal # Reset color

    echo -n ' '
end

#function fish_prompt
#    echo " ~ "
#end

set fish_color_valid_path

#function fish_prompt
#    echo (prompt_pwd) "❯ "
#echo (set_color -o 00d3b8)"➜" (set_color -o 3daee9)(prompt_pwd)(set_color -o yellow) "✗ "
#end

#-------------------------
# ALIASES
#-------------------------

# INSTALL PACKAGES WITH UBUNTU
abbr u 'sudo apt update && sudo apt upgrade'
abbr i 'sudo apt install'
abbr pkr 'sudo apt remove'
abbr pks 'sudo apt search'

# INSTALL PACKAGES WITH FLATPAK
abbr f 'flatpak install'
abbr fu 'flatpak update'
abbr fr 'flatpak remove'
abbr fs 'flatpak search'
abbr fcl 'flatpak uninstall --unused'
abbr fls 'flatpak list --app --columns=application'

# CLI COMMANDS
alias l 'eza -lh --group-directories-first'
alias la 'eza -lha --group-directories-first'
abbr t 'btop'
abbr ri 'rg -i'
abbr s 'sudo'
abbr d 'du -sh *'
abbr df 'df -h'
abbr sfi 'source ~/.config/fish/config.fish'
abbr c 'clear'

# SHORCUTS FOR PROGRAMS
abbr v 'nvim'
abbr V 'sudo nvim'
abbr e 'micro'

# PLACES
abbr dw 'cd ~/Downloads'
abbr dc 'cd ~/Documents'
abbr pc 'cd ~/Pictures'
abbr vd 'cd ~/Videos'
abbr pu 'cd ~/Public'

# POWER
abbr sd 'shutdown now'
abbr re 'reboot'

abbr x 'startx'

# RESOLUTION
abbr 4k 'xrandr -s 3840x2160'
abbr hd 'xrandr -s 1920x1080'

# SOURCE CONFIG FILES
abbr fis 'source ~/.config/fish/config.fish'
abbr zshs 'source ~/.zshrc'
abbr bas ' source ~/.bashrc'

# YOUTUBE DOWNLOAD
abbr yab 'cd ~/Downloads/; yt-dlp -x --audio-format mp3 -f bestaudio '
abbr ya 'cd ~/Downloads/; yt-dlp --extract-audio --audio-format mp3 --audio-quality 0 '
abbr yv 'cd ~/Downloads/; yt-dlp '

#git stuff
abbr gc 'cd ~/Public; git clone'
abbr g-dots 'cd ~/Public; git clone https://github.com/fryalien/dotfiles'
abbr g-notes 'cd ~/Public; git clone https://github.com/fryalien/notes'

# PACMAN clean packages
abbr pkcl 'sudo paccache -r'

# MICRO EDITOR THEME
export "MICRO_TRUECOLOR=1"

# NEW FISH CONFIG
abbr dfi 'curl -L https://raw.githubusercontent.com/fryalien/fish-config/refs/heads/main/ubuntu.fish -o ~/.config/fish/config.fish'

# DOWNLOAD GIT EOS-XFCE-VM
abbr eosxvm 'cd ~/Public/; git clone https://github.com/fryalien/eos-xfce-vm.git'

# DOWNLOAD GIT EOS-AUTO-INSTALL
abbr eosa 'cd ~/Public/; git clone https://github.com/fryalien/eos-xfce-autoinstall'

