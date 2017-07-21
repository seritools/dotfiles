source ~/.antigen/antigen/antigen.zsh

antigen init ~/.antigenrc

export DEFAULT_USER=st
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'

# workaround for tmux socket folder not being created in wsl
# also force setting SHELL in wsl
# user needs to be in the utmp group as well
if [[ $(cat /proc/sys/kernel/osrelease) =~ Microsoft$ ]]; then
    export SHELL=/bin/zsh
    if [[ ! -d /var/run/tmux ]]; then
        echo fixing tmux in openSuse on WSL.
	sudo systemd-tmpfiles --create --prefix=/run/tmux
    fi
fi
