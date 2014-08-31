# # LANG
# export LANG=ja_JP.UTF-8

# KEYBIND
bindkey -e
# Ctrl+R is incremental search like a bash
bindkey "^R" history-incremental-search-backward

# PROMPT
PROMPT="%% "
function zle-line-init zle-keymap-select {
# case $KEYMAP in
# 	vicmd)
# 		PROMPT="[%{$fg_bold[red]%}NOR%{$reset_color%}] %{$fg_bold[white]%}%%%{$reset_color%} "
# 		;;
# 	main|viins)
# 		PROMPT="[%{$fg_bold[cyan]%}INS%{$reset_color%}] %{$fg_bold[white]%}%%%{$reset_color%} "
# 		;;
# esac
zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
PROMPT2="> "
SPROMPT="%r is correct? [n,y,a,e]: "
# RPROMPT='[`rprompt-git-current-branch`%F{cyan}%~%f] %n@desktop'
RPROMPT='[`rprompt-git-current-branch`%F{cyan}%~%f]'
RPROMPT2="%K{green}%_%k"
# プロンプトが表示されるたびにプロンプト文字列を評価、置換する
setopt prompt_subst
# 入力が右端まで来たらRPROMPTを消す
setopt transient_rprompt

# ${fg[...]} や $reset_color をロード
autoload -U colors; colors

function rprompt-git-current-branch {
    local name st color

    if [[ "$PWD" =~ '/\.git(/.*)?$' ]]; then
	    return
    fi
    name=$(basename "`git symbolic-ref HEAD 2> /dev/null`")
    if [[ -z $name ]]; then
	    return
    fi
    st=`git status 2> /dev/null`
    if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
	    color=${fg[green]}
    elif [[ -n `echo "$st" | grep "^nothing added"` ]]; then
	    color=${fg[yellow]}
    elif [[ -n `echo "$st" | grep "^# Untracked"` ]]; then
	    color=${fg_bold[red]}
    else
	    color=${fg[red]}
    fi

    # %{...%} は囲まれた文字列がエスケープシーケンスであることを明示する
    # これをしないと右プロンプトの位置がずれる
    echo "%{$color%}$name%{$reset_color%} "
}

# HISTORY
HISTFILE=~/.zsh_history
HISTSIZE=100000000
SAVEHIST=100000000
# history (fc -l) コマンドをヒストリリストから取り除く。
setopt hist_no_store
# すぐにヒストリファイルに追記する。
setopt inc_append_history
# 直前と同じコマンドをヒストリに追加しない
setopt hist_ignore_dups
# zsh の開始, 終了時刻をヒストリファイルに書き込む
setopt extended_history
# ヒストリを呼び出してから実行する間に一旦編集
setopt hist_verify
# ヒストリを共有
setopt share_history
# コマンドラインの先頭がスペースで始まる場合ヒストリに追加しない
setopt hist_ignore_space

# 補完
autoload -Uz compinit
compinit
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'
# 補完候補を一覧表示
setopt auto_list
# TAB で順に補完候補を切り替える
setopt auto_menu
# 補完候補一覧でファイルの種別をマーク表示
setopt list_types
# カッコの対応などを自動的に補完
setopt auto_param_keys
# ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash
# 補完候補のカーソル選択を有効に
zstyle ':completion:*:default' menu select=1
# 補完候補の色づけ
eval `dircolors`
export ZLS_COLORS=$LS_COLORS
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# 補完候補を詰めて表示
setopt list_packed
# スペルチェック
setopt correct
# ファイル名の展開でディレクトリにマッチした場合末尾に / を付加する
setopt mark_dirs
# 最後のスラッシュを自動的に削除しない
setopt noautoremoveslash

# 未分類
# コアダンプサイズを制限
limit coredumpsize 102400
# 出力の文字列末尾に改行コードが無い場合でも表示
unsetopt promptcr
# ビープを鳴らさない
setopt nobeep
# 内部コマンド jobs の出力をデフォルトで jobs -l にする
setopt long_list_jobs
# サスペンド中のプロセスと同じコマンド名を実行した場合はリジューム
setopt auto_resume
# cd 時に自動で push
setopt auto_pushd
# 同じディレクトリを pushd しない
setopt pushd_ignore_dups
# ファイル名で #, ~, ^ の 3 文字を正規表現として扱う
setopt extended_glob
# =command を command のパス名に展開する
setopt equals
# --prefix=/usr などの = 以降も補完
setopt magic_equal_subst
# ファイル名の展開で辞書順ではなく数値的にソート
setopt numeric_glob_sort
# 出力時8ビットを通す
setopt print_eight_bit
# ディレクトリ名だけで cd
setopt auto_cd
# {a-c} を a b c に展開する機能を使えるようにする
setopt brace_ccl
# Ctrl+S/Ctrl+Q によるフロー制御を使わないようにする
# setopt NO_flow_control
# コマンドラインでも # 以降をコメントと見なす
# setopt interactive_comments

# PAGER
if type lv > /dev/null 2>&1; then
	## lvを優先する。
	export PAGER="lv"
else
	## lvがなかったらlessを使う。
	export PAGER="less"
fi

if [ "$PAGER" = "lv" ]; then
	## -c: ANSIエスケープシーケンスの色付けなどを有効にする。
	## -l: 1行が長くと折り返されていても1行として扱う。
	## （コピーしたときに余計な改行を入れない。）
	export LV="-c -l"
else
	## lvがなくてもlvでページャーを起動する。
	alias lv="$PAGER"
fi

# global aliases
alias -g T="| tee"
alias -g G="| grep"
alias -g L="|& $PAGER"
alias -g WC="| wc"
alias -g LC="| wc -l"
alias -g Z="| tail"

# 以下は.bashrcと共用

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	#alias dir='dir --color=auto'
	#alias vdir='vdir --color=auto'

	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# my aliases
alias lt='ls -AltrF'
alias hi='history 1'
alias r='rails'
alias g='git'
alias rre="rbenv rehash"
alias be="bundle exec"

# jokey git alias
alias ginit='git init'
alias gstatus='git status'
alias gdiff='git diff'
alias glog='git log'
alias greflog='git reflog'
alias gshow='git show'
alias gadd='git add'
alias gcommit='git commit'
alias gcommit-m='git commit -m'
alias gbranch='git branch'
alias gcheckout='git checkout'
alias gpush='git push'
alias gfetch='git fetch'
alias gpull='git pull'
# # jokey git alias
# alias gtat='git status'
# alias giff='git diff'
# alias gog='git log'
# alias ghow='git show'
# alias gdd='git add'
# alias gomi='git commit'
# alias gomm='git commit -m'
# alias grah='git branch'
# alias gheo='git checkout'

# crontab
alias crontab='crontab -i'

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# # touchpad disabled
# xinput set-prop 10 "Device Enabled" 0

export VIMRUNTIME=/usr/share/vim/vim74

# color settings for vim
export TERM=xterm-256color

# git-escape-magic for vim
FPATH="$HOME/.zshrc_dir/zsh-git-escape-magic:${FPATH}"
# FPATH="/usr/share/zsh/functions/etc:${FPATH}"
autoload -Uz git-escape-magic
git-escape-magic

# emacs
alias ema='emacsclient -c -t'
# alias emacs='emacs22 -nw'
# alias ema='emacsclient -c'
# alias ema='emacs24 -nw'
# alias vi='emacs24 -nw'
alias kill-emacs='emacsclient -e "(kill-emacs)"'

# emacs daemon
# emacsclient をシームレスに使うための関数
# http://k-ui.jp/?p=243
function emacs(){
    echo "[$0] emacsclient -c -t $*";
    (emacsclient -c -t $* ||
	    (echo "[$0] emacs --daemon"; /usr/bin/emacs --daemon &&
	        (echo "[$0] emacsclient -c -t $*"; emacsclient -c -t $*)) ||
	    (echo "[$0] emacs $*"; emacs $*))
}

# ソケットの場所を環境変数に覚えてもらう
# emacs のバージョンによって少し場所が違うようなので、
# *** "/tmp" を要確認 ***
export USER_ID=`id -u`
export EMACS_TMP_DIR="/tmp/emacs$USER_ID"
export EMACS_SOCK="$EMACS_TMP_DIR/server"

# # screen emacsclient をシームレスに使うための関数
# function se(){
#     if which emacsclient &&
# 		(echo "[$0] ls $EMACS_SOCK "; ls $EMACS_SOCK) ||
# 		(echo "[$0] emacs --daemon"; emacs --daemon)
#     then
# 	    echo "[$-1] screen -t emacs emacsclient -t -c $*";
# 	    screen -t emacs emacsclient -t -c $*
#     elif which emacs
#     then
# 	    echo "[$0] screen emacs -t -c $*";
# 	    screen emacs -t -c $*
#     fi
# }

# # $EMACS_TMP_DIR が無いとき
# if ! [ -d $EMACS_TMP_DIR ]; then
# （socket 使わないバージョン、毎回emacs--daemonしてる。。。）
# function se(){
# 	if which emacsclient
# 		then
# 			echo "[$0] emacs --daemon"
# 			emacs --daemon
# 			echo "[$0] screen -t emacs emacsclient -t -c $*"
# 			screen -t emacs emacsclient -t -c $*
# 			elif which emacs
# 			then
# 			echo "[$0] screen emacs -t -c $*";
# 	screen emacs -t -c $*
# 		fi
# }
# fi

# # fonts for vim
# if [[ -r /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh ]]; then
# 	source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh
# fi

# measures for argument list too long
autoload zargs

# zmv
autoload -Uz zmv
alias zmv='noglob zmv -W'

# editor settings
export EDITOR='emacsclient -c -t'
# export EDITOR='emacs'

# disable ctrl D
set -o ignoreeof
# export IGNOREEOF=100

# g++
alias gpp='g++'
alias g11='g++ -std=c++11'
# alias g14='g++ -std=c++14'

# protoc
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

# rails on apache
RAILS_ENV=development #production

# clang-format-3.5
alias cgoogle='clang-format-3.5 -i -style=Google'
alias cllvm='clang-format-3.5 -i -style=LLVM'
alias ckernel='clang-format-3.5 -i'

# autopep8
alias autopep8='autopep8 --in-place'

# rubocop
alias rubocop='rubocop -a'

# # erlang
# export PATH=$PATH:/opt/otp_src_17.1/bin
# # export PATH=$PATH:/opt/erlang-17.1/bin

# elixir
export PATH=$PATH:/opt/elixir/bin

# swift
export PATH=$PATH:/opt/swift-0.94.1/bin

# scala
export PATH=$PATH:/opt/scala-2.11.1/bin

# go language
export GOROOT=/opt/go
export GOPATH=$HOME/.go
export GOBIN=$GOROOT/bin
export PATH=$PATH:$GOBIN
export GOMAXPROC=8

# eclipse
alias eclipse='/opt/eclipse/eclipse.sh'

# alps
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/opt/alps/include
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/alps/lib
export PATH=$PATH:/opt/alps/bin

# cabal bin file (for haskell)
export PATH=$PATH:$HOME/.cabal/bin

# # jubatus
# export PATH=$PATH:/opt/jubatus/bin

# # vistrails
# alias vistrails='python /opt/vistrails-src-nightly/vistrails/run.py'

# # path for android sdk linux
# export PATH=$PATH:/opt/android-sdk-linux/tools
# export PATH=$PATH:/opt/android-sdk-linux/platform-tools

# # android
# alias android='/opt/android-sdk-linux/tools/android'
# #export PATH=${PATH}:$HOME/android/android-sdk-linux_x86/platform-tools

# #add a default library path for g++
# export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/usr/local/include/eigen3

# #OPAM configuration
#. $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# # hadoop
# export HADOOP_HOME=/usr/local/hadoop-2.4.1-src
# export HADOOP_COMMON_HOME=$HADOOP_HOME
# export HADOOP_CONF_DIR=$HADOOP_HOME/hadoop-common-project/hadoop-common/src/main/conf
# export HADOOP_HDFS_HOME=$HADOOP_HOME/hadoop-hdfs-project/hadoop-hdfs
# export HADOOP_MAPRED_HOME=$HADOOP_HOME/hadoop-mapreduce-project/hadoop-hdfs
# export HADOOP_YARN_HOME=$HADOOP_HOME/hadoop-mapreduce-project/hadoop-hdfs





