export TERM="xterm-256color"
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
CASE_SENSITIVE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  #git
  vi-mode
  colored-man-pages
  cp
  tmux
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit

# Keybindings
source ~/config/zshrc.keys

#source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'
export LANG=en_GB.UTF-8
export EDITOR='vim'
export SSH_KEY_PATH="$HOME/.ssh/rsa_id"

# History
HIST_STAMPS="dd.mm.yyyy"
export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY
setopt CHASE_LINKS

#
alias l="ls -lathr --color"
alias bv="bcftools view"
alias bq="bcftools query -f '%CHROM\t%ID\t%POS\t%REF\t%ALT\n'"
alias bqq="bcftools +split-vep -s all -d -A tab  -f '%CHROM\t%ID\t%POS\t%REF\t%ALT\t%CSQ\n'"
alias gh="history -E | grep"
alias awkt='awk -vFS="\t" -vOFS="\t"'
alias le='less -NS'
alias rl="readlink -f"

cs() {
	cd "$1" &&
	ls
}

export PATH="$HOME/bin:$HOME/perl5/bin:$PATH"
export MANPATH="$HOME/share/man:$MANPATH"

export CPATH="$HOME/include"
export LDFLAGS="-Wl,-rpath,$HOME/lib64 -Wl,-rpath,$HOME/lib -L$HOME/lib64 -L$HOME/lib/"
#export CFLAGS="-I$HOME/include -L$HOME/lib64 -L$HOME/lib"
#export CPPFLAGS="-I$HOME/include -L$HOME/lib64 -L$HOME/lib"
#export LD_LIBRARY_PATH="$HOME/lib64:$HOME/lib:/lib64:/lib"

export PERL5LIB="/$HOME/perl5/lib"
export PERL_MB_OPT="/$HOME/perl5/lib"
export PERL_LOCAL_LIB_ROOT="/$HOME/perl/lib/perl5"
export PERL_MM_OPT=INSTALL_BASE="/$HOME/perl5"

#export CC="$HOME/bin/gcc"
#export BCFTOOLS_PLUGINS="$HOME/src/bcftools-1.10.2/plugins"

#source conda
. "/home/alex/miniconda3/etc/profile.d/conda.sh"

