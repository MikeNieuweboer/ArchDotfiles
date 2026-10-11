if status is-interactive
    # Commands to run in interactive sessions can go here
    source ~/.shell_aliasses
    set -U fish_greeting

    set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml
    starship init fish | source
    zoxide init fish | source

    fish_add_path ~/.lmstudio/bin/
end
