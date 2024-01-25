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
alias ys='BROWSER=none yarn start'
alias yss='BROWSER=none yarn start:storybook'
alias yys='yarn && ys'
alias yb='yarn build'
alias ybp='yarn build:packages'
alias yybp='yarn && ybp'
alias yyb='yarn && yb'
alias ybl='yarn && yarn build:local'
alias yc='yarn changelog'
alias yt='yarn test'
alias yyt='yarn && yt'
alias ybt='yarn && yb && yt'
alias yl='yarn lint'
alias yyl='yarn && yl'
alias ylf='yarn lint:fix'
alias yylf='yarn && ylf'
alias ydd='npx yarn-deduplicate yarn.lock && yarn'
alias ym='yarn --mode=update-lockfile'
alias yd='yarn dedupe --strategy highest'
alias ydm='yarn dedupe --strategy highest --mode=update-lockfile'
alias yyd='yarn --mode=update-lockfile && yarn dedupe --strategy highest'
alias yydm='yarn --mode=update-lockfile && yarn dedupe --strategy highest --mode=update-lockfile'
alias yydmy='yydm && yarn'
alias yui='yarn upgrade-interactive'
alias ystrrfc='(){ yarn sled-test-runner remote -f $1 --flakiness-check=20 }'
# ybwd = yarn build with deps
alias ybwd='yarn workspaces foreach -pR --topological-dev run build'

alias Projects='cd ~/Projects'
alias P='Projects'

alias bcbo='cd ~/Projects/bookings-catalog-bo'
alias bsfp='cd ~/Projects/bookings-catalog-bo/apps/bookings-service-form-page'
alias bpp='cd ~/Projects/bookings-catalog-bo/apps/bookings-pricing-plans'
alias bnsbm='cd ~/Projects/bookings-catalog-bo/apps/bookings-namespaces-bm'
alias bsm='cd ~/Projects/bookings-catalog-bo/apps/bookings-staff-management'
alias bsl='cd ~/Projects/bookings-catalog-bo/apps/bookings-services-list'
alias bgm='cd ~/Projects/bookings-catalog-bo/apps/bookings-gallery-manager'
alias bss='cd ~/Projects/bookings-catalog-bo/apps/bookings-services-statics'
alias bsets='cd ~/Projects/bookings-catalog-bo/apps/bookings-settings-statics'
alias bsp='cd ~/Projects/bookings-catalog-bo/apps/bookings-settings-page'
alias bicp='cd ~/Projects/bookings-catalog-bo/apps/bookings-integration-channels-page'
alias bacs='cd ~/Projects/bookings-catalog-bo/apps/bookings-anywhere-channels-statics'
alias bpl='cd ~/Projects/bookings-catalog-bo/apps/bookings-policies-list'
alias bpagelinks='cd ~/Projects/bookings-catalog-bo/apps/bookings-page-links'
alias blinksproto='cd ~/Projects/bookings-catalog-bo/proto-packages/bookings-links-service-api-proto'
alias blinksservice='cd ~/Projects/bookings-catalog-bo/serverless/bookings-links-service'
alias bpf='cd ~/Projects/bookings-catalog-bo/apps/bookings-policy-form'
alias bccboc='cd ~/Projects/bookings-catalog-bo/packages/bookings-cc-bo-common'
alias bppa='cd ~/Projects/bookings-catalog-bo/packages/bookings-pricing-plans-api'
alias bnsbma='cd ~/Projects/bookings-catalog-bo/packages/bookings-namespaces-api'
alias bsu='cd ~/Projects/bookings-catalog-bo/packages/bookings-sled-utils'

alias sss='P && spot-spotter-server'

alias git=hub
alias gut=git
alias giy=git
alias gti=git
alias got=git
alias gt=git
alias grH='git reset HEAD~'
alias gpr-no-rm='git pull --rebase'
alias gpr='gpr-no-rm && rm-gone'
alias gct='git commit -m"wip" --no-verify'
alias gcta='git commit -am"wip" --no-verify'
alias gcomp='(){ BRANCH="$(git rev-parse --abbrev-ref HEAD)"; URL="$(git config --get remote.origin.url)"; git push origin -u $BRANCH; open "$URL/pull/new/$BRANCH" }'

alias rm-merged='git fetch -p && git branch --merged | grep -v "\*" | grep -v "\+" | grep -v master | grep -v develop | grep -v release | xargs -n 1 git branch -d'
alias rm-squashed='git fetch -p && git branch -vv | cut -c 3- | grep '"'"': gone]'"'"' | awk '"'"'{print $1}'"'"' | xargs -n1 -r git branch -D'
alias rm-gone='rm-merged && rm-squashed'
alias sync='sync-no-rm && rm-gone'
alias sync-no-rm='git fetch -p && git fetch origin master:master'
alias sync-no-rm-o='git fetch -p'
alias sync-rebase-no-rm='(){ sync-no-rm; [[ $1 ]] && git co $1; git rebase master --autosquash; }'
alias sync-rebase-no-rm-o='(){ sync-no-rm-o; [[ $1 ]] && git co $1; git rebase origin/master --autosquash; }'
alias sync-rebase='(){ sync-rebase-no-rm $1 && rm-gone }'
alias sync-rebase-origin='(){ sync-rebase-no-rm-o $1 && rm-gone }'
alias sync-rebase-interactive='(){ sync-no-rm; [[ $1 ]] && git co $1; git rebase master -i --autosquash && rm-gone; }'
alias sync-rebase-interactive-origin='(){ sync-no-rm-o; [[ $1 ]] && git co $1; git rebase origin/master -i --autosquash && rm-gone; }'
alias sync-merge='(){ sync-no-rm; [[ $1 ]] && git co $1; git merge master -m"merge master" && rm-gone; }'
alias sync-merge-origin='(){ sync-no-rm-o; [[ $1 ]] && git co $1; git merge origin/master -m"merge master" && rm-gone; }'
alias master='(){ [[ $(git rev-parse --abbrev-ref HEAD) == "master" ]] && (gpr-no-rm) || (sync-no-rm); [[ $1 ]] && (git branch $1 master && git co -m $1) || (git co -m master); rm-gone; }'
alias master-origin='(){ sync-no-rm-o; git branch $1 origin/master --no-track; git co -m $1; rm-gone; }'
alias m='master'
alias mo='master-origin'
alias sr='(){ sync-rebase $1 }'
alias sro='(){ sync-rebase-origin $1 }'
alias sri='(){ sync-rebase-interactive $1 }'
alias srio='(){ sync-rebase-interactive-origin $1 }'
alias sm='(){ sync-merge $1 }'
alias smo='(){ sync-merge-origin $1 }'
alias smgp='(){ sm $1 && gp }'
alias srgpf='(){ sr $1 && gpf }'
alias srigpf='(){ sri $1 && gpf }'
alias srgcomp='sr && gcomp'

alias weap='(){ [[ $1 ]] && (webstorm-eap $1) || (webstorm-eap .) }'
alias wnext='(){ [[ $1 ]] && (webstorm-next $1) || (webstorm-next .) }'
alias ws='(){ [[ $1 ]] && (webstorm $1) || (webstorm .) }'
alias f='fork .'
alias tower='gittower .'

alias npmv='(){ npm v $1 version }'

alias c='cd .'



test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

export PATH="/usr/local/bin:$PATH"

source /Users/ilyap/.config/broot/launcher/bash/br

export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=`which chromium`

# bun completions
[ -s "/Users/ilyap/.bun/_bun" ] && source "/Users/ilyap/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


tmutil_exclude() {
    # todo: recurse to parent dirs to support commands that execute in project subdirs
    DIR=$1
    DEP_FILE=$2

    if [ -d "$DIR" ] && [ -f "$DEP_FILE" ] && ! tmutil isexcluded "$DIR" | grep -q '\[Excluded\]'; then
        tmutil addexclusion "$DIR"
        echo "tmutil: ${DIR} has been excluded from Time Machine backups"
    fi
}

__npm_wrapper () {
    command npm "$@"
    EXIT_CODE=$?
    tmutil_exclude "node_modules" "package.json"
    tmutil_exclude "dist" "package.json"
    tmutil_exclude "target" "package.json"
    return $EXIT_CODE
}
__yarn_wrapper () {
    command yarn "$@"
    EXIT_CODE=$?
    tmutil_exclude "node_modules" "package.json"
    tmutil_exclude "dist" "package.json"
    tmutil_exclude "target" "package.json"
    return $EXIT_CODE
}

alias npm=__npm_wrapper
alias yarn=__yarn_wrapper

export BROWSER=none
export QUICK_LINT=true

# fnm START
export PATH="/Users/ilyap/Library/Application Support/fnm:$PATH"
eval "`fnm env --use-on-cd --version-file-strategy recursive`"
# fnm END


# For React Native
export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.2.0/bin:$PATH"
