# Define path locations for a local build of the Data Display Debugger (DDD)
# created for the Intel 64 architecture.

# Adjust PATH:
if [ -z "${PATH}" ]
then
	PATH="/opt/local/DDD/current/bin"
else
	PATH="/opt/local/DDD/current/bin:${PATH}"
fi
export PATH

# Adjust MANPATH
if [ -z "${MANPATH}" ]
then
    MANPATH="/opt/local/DDD/current/share/man:$(manpath)"
else
    MANPATH="/opt/local/DDD/current/share/man:${MANPATH}"
fi
export MANPATH

# Adjust INFOPATH
if [ -z "${INFOPATH}" ]
then
    INFOPATH="/opt/local/DDD/current/share/info"
else
    INFOPATH="/opt/local/DDD/current/share/info:${INFOPATH}"
fi
export INFOPATH
