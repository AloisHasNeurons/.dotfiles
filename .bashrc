# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

export PATH=$PATH:/home/alois/.spicetify
export PATH=$PATH:/opt/ibm/ILOG/CPLEX_Studio2211/opl/bin/x86-64_linux/oplrun

# ---------------------------------
#  Config for Cplex_Studio_22.1.1
# ---------------------------------
CPLEX_STUDIO="/opt/ibm/ILOG/CPLEX_Studio2211"; export CPLEX_STUDIO
CPARCH="x86-64_linux"; export CPARCH  # Adjust based on architecture

CPLEXPATH="$CPLEX_STUDIO/cplex/bin/$CPARCH"; export CPLEXPATH
OPLPATH="$CPLEX_STUDIO/opl/bin/$CPARCH"; export OPLPATH
OPLIDEPATH="$CPLEX_STUDIO/opl/bin/$CPARCH"; export OPLIDEPATH

# Add CPLEX and OPL to PATH
PATH=$PATH:$CPLEXPATH:$OPLPATH
export PATH

# Configure LD_LIBRARY_PATH (Linux equivalent of DYLD_LIBRARY_PATH)
if [[ -z "$LD_LIBRARY_PATH" ]]; then
    LD_LIBRARY_PATH="$CPLEXPATH:$OPLPATH:$OPLIDEPATH"
else
    LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$CPLEXPATH:$OPLPATH:$OPLIDEPATH"
fi
export LD_LIBRARY_PATH
