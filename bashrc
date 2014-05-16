# .bashrc
# User specific aliases and functions
# Source global definitions

if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

PATH=/usr/local/python-2.7/bin:$PATH:/user/c.skrzynski/bin:/user/ks1004.park/fmclx/rootfs/usr/bin

export LANG=en_US.UTF-8

export LS_COLORS='no=00:fi=00:di=01;94:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;91;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:';

if [ -x /usr/bin/dircolors ]; then
  alias ls='ls --color=auto'
  alias dir='dir --color=auto'
  alias vdir='vdir --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi


# =[ 1) BASH COLOR DEFINITIONS ]= #
if [ -f ~/.bashcolor ]; then
  . ~/.bashcolor
fi

# =[ 2) CLEAR CASE ]= #
if [ -f ~/.bashct ]; then
  . ~/.bashct
fi

# =[ 3) BASH PROMPT ]= #
if [ -f ~/.prompt ]; then
  . ~/.prompt
fi

# =[ 4) BASH ALIASES ]= #
if [ -f ~/.aliases ]; then
  . ~/.aliases
fi
