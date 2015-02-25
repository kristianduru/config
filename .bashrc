# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions
export HISTFILESIZE=9000
export HISTSIZE=9000

export PATH=$PATH:~/code/scripts

# Screen session title+hardline dont behave fix
# shoves whats after screens -r opt into title
screen ()
{
    sessionname=$(echo $@ | fgrep -- '-r ' | sed 's/.*-r \([^ ]\+\).*/\1/');
    echo -ne "\033]0;${sessionname:-Puttty}\007";
    command screen $@;
    echo -ne "\033]0;Putttty\007"
}
