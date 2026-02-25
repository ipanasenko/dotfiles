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
plugins=(git)

# User configuration

export PATH="/Users/ilyap/.rbenv/shims:/Users/ilyap/.node/bin:/opt/homebrew/bin:/usr/bin:/usr/local/bin:/bin:/usr/sbin:/sbin"
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
alias ysa='BROWSER=none yarn start:app'
alias yssb='BROWSER=none yarn start:sb'
alias yys='yarn && ys'
alias yb='yarn build'
alias yyfbmb='yarn yoshi-flow-bm build'
alias ybp='yarn build:packages'
alias yybp='yarn && ybp'
alias yyb='yarn && yb'
alias ybl='yarn && yarn build:local'
alias yc='yarn changelog'
alias yt='yarn test'
alias ytuwf='(){ yarn test:unit --watch -f $1 }'
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
alias yydbp='yyd && ybp'
alias yui='yarn upgrade-interactive && yd'
alias yuim='yarn upgrade-interactive --mode=update-lockfile'
alias ystrrfc='(){ yarn sled-test-runner remote -f $1 --flakiness-check=20 }'
# ybwd = yarn build with deps
alias ybwd='(yarn build:deps:ws || ybp || yarn workspaces foreach -pR --topological-dev run build)'
alias yybwd='yarn && ybwd'

alias Projects='cd ~/Projects'
alias P='Projects'

alias bcbo='cd ~/Projects/bookings-catalog-bo'
alias bsfp='cd ~/Projects/bookings-catalog-bo/apps/bookings-service-form-page'
alias bbovcs='cd ~/Projects/bookings-catalog-bo/apps/bookings-bo-video-conferencing-statics'
alias bpp='cd ~/Projects/bookings-catalog-bo/apps/bookings-pricing-plans'
alias bgi='cd ~/Projects/bookings-catalog-bo/apps/bookings-google-integration'
alias bsm='cd ~/Projects/bookings-catalog-bo/apps/bookings-staff-management'
alias brm='cd ~/Projects/bookings-catalog-bo/apps/bookings-resource-management'
alias bsl='cd ~/Projects/bookings-catalog-bo/apps/bookings-services-list'
alias bgm='cd ~/Projects/bookings-catalog-bo/apps/bookings-gallery-manager'
alias bss='cd ~/Projects/bookings-catalog-bo/apps/bookings-services-statics'
alias bnoti='cd ~/Projects/bookings-catalog-bo/apps/bookings-notifications'
alias bsets='cd ~/Projects/bookings-catalog-bo/apps/bookings-settings-statics'
alias bsp='cd ~/Projects/bookings-catalog-bo/apps/bookings-settings-page'
alias bicp='cd ~/Projects/bookings-catalog-bo/apps/bookings-integration-channels-page'
alias bpl='cd ~/Projects/bookings-catalog-bo/apps/bookings-policies-list'
alias bpagelinks='cd ~/Projects/bookings-catalog-bo/apps/bookings-page-links'
alias blinksproto='cd ~/Projects/bookings-catalog-bo/proto-packages/bookings-links-service-api-proto'
alias blinksservice='cd ~/Projects/bookings-catalog-bo/serverless/bookings-links-service'
alias bpf='cd ~/Projects/bookings-catalog-bo/apps/bookings-policy-form'
alias bccboc='cd ~/Projects/bookings-catalog-bo/packages/bookings-cc-bo-common'
alias bppa='cd ~/Projects/bookings-catalog-bo/packages/bookings-pricing-plans-api'
alias bsu='cd ~/Projects/bookings-catalog-bo/packages/bookings-sled-utils'

alias wp='cd ~/Projects/wix-payments'
alias wpcms='cd ~/Projects/wix-payments/packages/cashier-merchant-settings'

alias sss='P && spot-spotter-server'

alias git=hub
alias gut=git
alias giy=git
alias gti=git
alias got=git
alias gt=git
alias grH='git reset HEAD~'
alias gpr-no-rm='git pull --rebase'
alias gprf-no-rm='git pull --rebase=false --no-edit'
alias gp='git push --no-verify'
alias gpf='git push --force-with-lease --force-if-includes --no-verify'
alias gpr='gpr-no-rm && rm-gone'
alias gprf='gprf-no-rm && rm-gone'
alias gpry='gpr && yarn'
alias gpryybp='gpr && yybp'
alias gct='git commit -m"wip" --no-verify'
alias gcta='git commit -am"wip" --no-verify'
alias gcan='(){ git commit -am"$1" --no-verify }' # gcan = git commit all and no verify
alias gcangp='(){ gcan $1 && gp }'
alias gcan-bump='gcan "[all] PAY-46207 chore: bump deps
- [x] <!-- dont-merge-base-branch --> 🔀 Do not merge master into this PR (Faster build, [Docs](https://dev.wix.com/docs/rnd-general/devex/falcon/features/avoid-merging-a-pr-with-base-branch))"'
alias gcan-deps='gcan-bump'
alias gcaane='git commit -a --amend --no-edit'
alias gcomp='(){ BRANCH="$(git rev-parse --abbrev-ref HEAD)"; URL="$(git config --get remote.origin.url)"; git push origin -u $BRANCH; open "$URL/pull/new/$BRANCH" }'

# Cache default branch per-repo, so git aliases don't re-detect every invocation.
typeset -gA __git_default_branch_by_repo
typeset -gA __git_origin_default_ref_by_repo

__git_repo_root() {
  git rev-parse --show-toplevel 2>/dev/null
}

__git_detect_default_branch() {
  local head_ref current_branch
  head_ref=$(git symbolic-ref --quiet refs/remotes/origin/HEAD 2>/dev/null)
  if [[ -n "$head_ref" ]]; then
    echo "${head_ref##refs/remotes/origin/}"
    return 0
  fi

  if git show-ref --verify --quiet refs/remotes/origin/main; then
    echo "main"
    return 0
  fi

  if git show-ref --verify --quiet refs/remotes/origin/master; then
    echo "master"
    return 0
  fi

  current_branch=$(git symbolic-ref --quiet --short HEAD 2>/dev/null)
  if [[ "$current_branch" == "main" || "$current_branch" == "master" ]]; then
    echo "$current_branch"
    return 0
  fi

  if git show-ref --verify --quiet refs/heads/main; then
    echo "main"
    return 0
  fi

  if git show-ref --verify --quiet refs/heads/master; then
    echo "master"
    return 0
  fi

  # Preserve current behavior when branch can't be detected.
  echo "master"
}

__git_refresh_default_branch_cache() {
  local repo_root default_branch
  repo_root=$(__git_repo_root) || return 0

  if [[ -n "${__git_default_branch_by_repo[$repo_root]}" ]]; then
    return 0
  fi

  default_branch=$(__git_detect_default_branch)
  __git_default_branch_by_repo[$repo_root]="$default_branch"
  __git_origin_default_ref_by_repo[$repo_root]="origin/$default_branch"
}

__git_default_branch() {
  local repo_root
  repo_root=$(__git_repo_root) || { echo "master"; return 0; }

  if [[ -z "${__git_default_branch_by_repo[$repo_root]}" ]]; then
    __git_refresh_default_branch_cache
  fi

  echo "${__git_default_branch_by_repo[$repo_root]:-master}"
}

__git_origin_default_ref() {
  local repo_root
  repo_root=$(__git_repo_root) || { echo "origin/master"; return 0; }

  if [[ -z "${__git_origin_default_ref_by_repo[$repo_root]}" ]]; then
    __git_refresh_default_branch_cache
  fi

  echo "${__git_origin_default_ref_by_repo[$repo_root]:-origin/master}"
}

if [[ " ${chpwd_functions[*]} " != *" __git_refresh_default_branch_cache "* ]]; then
  chpwd_functions+=(__git_refresh_default_branch_cache)
fi
__git_refresh_default_branch_cache

alias rm-merged='git fetch -p && git branch --merged | grep -v "\*" | grep -v "\+" | grep -v "^main$" | grep -v "^master$" | grep -v "^develop$" | grep -v "^release$" | xargs -n 1 git branch -d || true'
alias rm-squashed='git fetch -p && git branch -vv | cut -c 3- | grep '"'"': gone]'"'"' | awk '"'"'{print $1}'"'"' | xargs -n1 -r git branch -D || true'
alias rm-gone='rm-merged && rm-squashed'
alias sync='sync-no-rm && rm-gone'
alias synco='sync-no-rm-o && rm-gone'
alias sync-no-rm='(){ local base="$(__git_default_branch)"; git fetch -p && git fetch origin "$base:$base"; }'
alias sync-no-rm-o='git fetch -p'
alias sync-rebase-no-rm='(){ local base="$(__git_default_branch)"; sync-no-rm; [[ $1 ]] && git co $1; git rebase "$base" --autosquash; }'
alias sync-rebase-no-rm-o='(){ local origin_base="$(__git_origin_default_ref)"; sync-no-rm-o; [[ $1 ]] && git co $1; git rebase "$origin_base" --autosquash; }'
alias sync-rebase='(){ sync-rebase-no-rm $1 && rm-gone }'
alias sync-rebase-origin='(){ sync-rebase-no-rm-o $1 && rm-gone }'
alias sync-rebase-interactive='(){ local base="$(__git_default_branch)"; sync-no-rm; [[ $1 ]] && git co $1; git rebase "$base" -i --autosquash && rm-gone; }'
alias sync-rebase-interactive-origin='(){ local origin_base="$(__git_origin_default_ref)"; sync-no-rm-o; [[ $1 ]] && git co $1; git rebase "$origin_base" -i --autosquash && rm-gone; }'
alias sync-merge='(){ local base="$(__git_default_branch)"; sync-no-rm; [[ $1 ]] && git co $1; git merge "$base" -m"merge $base" && rm-gone; }'
alias sync-merge-origin='(){ local origin_base="$(__git_origin_default_ref)"; sync-no-rm-o; [[ $1 ]] && git co $1; git merge "$origin_base" -m"merge $origin_base" && rm-gone; }'
alias main='(){ local base="$(__git_default_branch)"; [[ $(git rev-parse --abbrev-ref HEAD) == "$base" ]] && (gpr-no-rm) || (sync-no-rm); [[ $1 ]] && (git branch $1 "$base" && git co -m $1) || (git co -m "$base"); rm-gone; }'
alias main-origin='(){ local origin_base="$(__git_origin_default_ref)"; sync-no-rm-o; [[ $1 ]] && (git branch $1 "$origin_base" && git co -m $1) || (git co -m "$origin_base"); rm-gone; }'
alias m='main'
alias mo='main-origin'
alias sr='(){ sync-rebase $1 }'
alias sro='(){ sync-rebase-origin $1 }'
alias srogpf='(){ sync-rebase-origin $1 && gpf }'
alias sri='(){ sync-rebase-interactive $1 }'
alias srio='(){ sync-rebase-interactive-origin $1 }'
alias sm='(){ sync-merge $1 }'
alias smo='(){ sync-merge-origin $1 }'
alias smc='git commit -an --no-edit' # smc = sync merge continue
alias smgp='(){ sm $1 && gp }'
alias srgpf='(){ sr $1 && gpf }'
alias srigpf='(){ sri $1 && gpf }'
alias srgcomp='sr && gcomp'


alias new-worktree='(){
  repo_root=$(git rev-parse --show-toplevel) || return 1
  repo_name=$(basename "$repo_root")
  parent_dir=$(dirname "$repo_root")
  branchName="$1"

  # Try to detect the default branch (main or master)
  default_branch=$(git remote show origin 2>/dev/null | awk "/HEAD branch/ {print \$NF}")
  if [[ -z "$default_branch" ]]; then
    git fetch origin master 2>/dev/null
    if git show-ref --verify --quiet refs/remotes/origin/master; then
      default_branch="master"
    elif git show-ref --verify --quiet refs/remotes/origin/main; then
      default_branch="main"
    else
      echo "Could not determine default branch (main/master)"
      return 1
    fi
  else
    git fetch origin "$default_branch"
  fi

  if [[ -n "$branchName" ]]; then
    worktree_dir="${parent_dir}/${repo_name}-${branchName}"
    # Check if branch exists on origin
    if git ls-remote --exit-code --heads origin "$branchName" &>/dev/null; then
      git fetch origin "$branchName"
      branch_ref="origin/$branchName"
    else
      # Create local branch (not tracking) from default branch
      git fetch origin "$default_branch"
      git branch --no-track "$branchName" "origin/$default_branch"
      branch_ref="$branchName"
    fi
  else
    rand=$(cat /dev/urandom | LC_CTYPE=C tr -dc "a-zA-Z0-9" | head -c 3)
    worktree_dir="${parent_dir}/${repo_name}-${rand}"
    branch_ref="origin/$default_branch"
  fi

  git worktree add "$worktree_dir" "$branch_ref"
  cd "$worktree_dir"
}'
alias nwt='new-worktree'

remove-current-worktree() {
  force_flag=""
  if [[ "$1" == "--force" ]]; then
    force_flag="--force"
  fi
  current_dir=$(pwd)
  repo_root=$(git rev-parse --show-toplevel 2>/dev/null) || { echo "Not in a git repo"; return 1; }
  # The first worktree entry from `git worktree list --porcelain` is the main worktree
  main_worktree_path=$(git worktree list --porcelain | awk '/^worktree / {print $2; exit}')
  if [[ "$current_dir" == "$main_worktree_path" ]]; then
    echo "Refusing to remove main worktree ($current_dir)"
    return 1
  fi
  git worktree remove $force_flag "$current_dir"
}
alias rmwt='remove-current-worktree'


alias rebase-last-commit-of-sheshesh-pr='(){ local origin_base="$(__git_origin_default_ref)"; git fetch && git checkout $1 && git rebase --onto "$origin_base" HEAD^ && git push --force-with-lease --no-verify }'

alias c='(){ [[ $1 ]] && (cursor $1) || (cursor .) }'
af() { agent -f "$@"; }
alias ws='(){ [[ $1 ]] && (windsurf $1) || (windsurf .) }'
alias weap='(){ [[ $1 ]] && (webstorm-eap $1) || (webstorm-eap .) }'
alias wnext='(){ [[ $1 ]] && (webstorm-next $1) || (webstorm-next .) }'
alias f='open -a fork .'
alias tower='gittower .'
alias code='(){ [[ $1 ]] && (code $1) || (code .) }'
alias codi='(){ [[ $1 ]] && (code-insiders $1) || (code-insiders .) }'
alias wsurf='windsurf'

alias npmv='(){ npm v $1 version }'

# alias c='cd .'

alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

export PATH="/usr/local/bin:$PATH"

export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=`which chromium`

# bun completions
[ -s "/Users/ilyap/.bun/_bun" ] && source "/Users/ilyap/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# tmutil_exclude() {
#     # todo: recurse to parent dirs to support commands that execute in project subdirs
#     DIR=$1
#     DEP_FILE=$2

#     if [ -d "$DIR" ] && [ -f "$DEP_FILE" ] && ! tmutil isexcluded "$DIR" | grep -q '\[Excluded\]'; then
#         tmutil addexclusion "$DIR"
#         echo "tmutil: ${DIR} has been excluded from Time Machine backups"
#     fi
# }

# __npm_wrapper () {
#     command npm "$@"
#     EXIT_CODE=$?
#     tmutil_exclude "node_modules" "package.json"
#     tmutil_exclude "dist" "package.json"
#     tmutil_exclude "target" "package.json"
#     return $EXIT_CODE
# }
# __yarn_wrapper () {
#     command yarn "$@"
#     EXIT_CODE=$?
#     tmutil_exclude "node_modules" "package.json"
#     tmutil_exclude "dist" "package.json"
#     tmutil_exclude "target" "package.json"
#     return $EXIT_CODE
# }

# alias npm=__npm_wrapper
# alias yarn=__yarn_wrapper

alias npmpublic="npm config set registry https://registry.npmjs.org/ && npm config get registry && yarn config set npmRegistryServer https://registry.npmjs.org/ --home || yarn config set registry https://registry.npmjs.org/"
alias npmprivate="npm config set registry https://npm.dev.wixpress.com && npm config get registry && yarn config set npmRegistryServer https://npm.dev.wixpress.com --home || yarn config set registry https://npm.dev.wixpress.com"




alias turbo="npx turbo"
alias t=turbo

export EDITOR=cursor
# export BROWSER=none
export QUICK_LINT=true

# fnm START
export PATH="/Users/ilyap/Library/Application Support/fnm:$PATH"
eval "`fnm env --use-on-cd --version-file-strategy recursive`"
# fnm END


# For React Native
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-18.0.2.1.jdk/Contents/Home"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.2.0/bin:$PATH"
export PATH="/Users/ilyap/apache-maven-3.9.6/bin:$PATH"


autoload -U compinit && compinit
zmodload -i zsh/complist

source /Users/ilyap/.config/broot/launcher/bash/br
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/opt/gradle@7/bin:$PATH"

export PATH="/opt/homebrew/opt/python@3.12/libexec/bin:$PATH"
export PATH="$PATH:/Users/ilyap/.local/bin"

export SKIP_BETTERER_ON_PRECOMMIT=true

# opencode
export PATH=/Users/ilyap/.opencode/bin:$PATH


# sled-playwright
export SILENT_REPORT=true