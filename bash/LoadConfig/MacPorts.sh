# Include the path for running MacPorts

if [ -z "${PATH}" ]
then
	PATH="/opt/ports/bin:/opt/ports/sbin";
else
	PATH="/opt/ports/bin:/opt/ports/sbin:${PATH}";
fi
export PATH;

if [ -z "${MANPATH}" ]
then
	MANPATH="/opt/ports/share/man";
else
	MANPATH="/opt/ports/share/man:${PATH}";
fi
export MANPATH;
