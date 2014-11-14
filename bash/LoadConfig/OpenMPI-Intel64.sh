# Define path locations for a local build of Open MPI created for the
# Intel 64 architecture. This build includes support for the installed
# Intel Fortran compilers.

# Adjust PATH:
if [ -z "${PATH}" ]
then
	PATH="/opt/local/OpenMPI/current/bin"
else
	PATH="/opt/local/OpenMPI/current/bin:${PATH}"
fi
export PATH

# Note: the OpenMPI.org site recommends NOT to do the following:
# Adjust Dynamic Library Path (DYLD_LIBRARY_PATH):
#if [ -z "${DYLD_LIBRARY_PATH}" ]
#then
#   DYLD_LIBRARY_PATH="/opt/local/OpenMPI/current/lib"
#else
#   DYLD_LIBRARY_PATH="/opt/local/OpenMPI/current/lib:${DYLD_LIBRARY_PATH}"
#fi
#export DYLD_LIBRARY_PATH

# Adjust MANPATH
if [ -z "${MANPATH}" ]
then
    MANPATH="/opt/local/OpenMPI/current/share/man"
else
    MANPATH="/opt/local/OpenMPI/current/share/man:${MANPATH}"
fi
export MANPATH