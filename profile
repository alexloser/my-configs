# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/scripts" ] ; then
    PATH="$HOME/scripts:$PATH"
fi

export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-amd64"
export JRE_HOME="${JAVA_HOME}/jre"
export CLASSPATH=".:${JAVA_HOME}/lib:${JRE_HOME}/lib:${SPARK_HOME}/lib"
export PATH="$PATH:${JAVA_HOME}/bin"

export GOROOT="/usr/local/go"
export GOPATH="$HOME/Go"
export PATH="$PATH:$GOROOT/bin"

export OMP_NUM_THREADS=4

# export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/rtlibs"


alias gpom='echo "git push origin master"; git push origin master'
alias gcam='echo "git commit -a -m"; git commit -a -m '
alias rm='rm -v'
alias cp='cp -v'
alias mv='mv -v'



