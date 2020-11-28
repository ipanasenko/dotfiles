# Path to your oh-my-zsh installation.
export ZSH=/Users/ilyap/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dracula-pro"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(npm git)

# User configuration

export PATH="/Users/ilyap/.rbenv/shims:/usr/bin:/Users/ilyap/.node/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias yy='yarn && yarn'
alias ys='yarn && yarn start'
alias ysn='(se && yarn && yarn start:nocheck)'
alias yys='yy && yarn start'
alias yb='yarn && yarn build'
alias ybl='yarn && yarn build:local'
alias yul='yarn && yarn upgrade-interactive --latest && npx @wix/wix-wnp-version --fix && yarn'
alias yc='yarn changelog'
alias yt='yarn && yarn test'
alias ybt='yarn && yb && yt'

alias g6='cd ~/Projects/media-manager-g6 && nvm use'
alias g5='cd ~/Projects/media-gallery-g5 && nvm use'
alias mmgrsdk='cd ~/Projects/media/media-manager-sdk && nvm use'
alias wsr='cd ~/Projects/wix-style-react && nvm use'
alias media='cd ~/Projects/media && nvm use'
alias Projects='cd ~/Projects'

alias ap='cd ~/Projects/add-panel && nvm use'
alias aps='cd ~/Projects/add-panel/add-panel-service && nvm use'
alias apc='cd ~/Projects/add-panel/add-panel-component && nvm use'
alias apco='cd ~/Projects/add-panel/add-panel-common && nvm use'

alias se='cd ~/Projects/santa-editor-parent/santa-editor && nvm use'
alias sep='cd ~/Projects/santa-editor-parent && nvm use'
alias sepu='cd ~/Projects/SantaEditorPresetsUploader && nvm use'
alias sit='cd ~/Projects/santa-integration-tests && nvm use'

alias git=hub 
alias gut=git
alias giy=git
alias gti=git
alias got=git
alias gt=git
alias gpr='git pull --rebase && rm-merged'
alias gct='git commit -am"wip" --no-verify'

alias rm-merged='git fetch -p && git branch --merged | grep -v "\*" | grep -v master | grep -v develop | grep -v release | xargs -n 1 git branch -d'
alias sync='git fetch -p && git fetch origin master:master'
alias sync-rebase='sync && git rebase master --autosquash && rm-merged'
alias sync-rebase-interactive='sync && git rebase master -i --autosquash && rm-merged'
alias sync-merge='sync && git merge master && rm-merged'
alias master='sync-rebase && git co master && rm-merged'
alias sr='sync-rebase'
alias sri='sync-rebase-interactive'
alias sm='sync-merge'

alias link-add-panel='yarn link @wix/add-panel-component && (cd santa-editor && yarn link @wix/add-panel-component) && yarn'
alias unlink-add-panel='yarn unlink @wix/add-panel-component && (cd santa-editor && yarn unlink @wix/add-panel-component) && yarn --force'


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"





export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/usr/local/bin:$PATH"
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ilyap/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ilyap/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ilyap/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ilyap/google-cloud-sdk/completion.zsh.inc'; fi


alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

nvm install
