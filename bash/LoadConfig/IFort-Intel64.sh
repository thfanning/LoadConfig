# Run the configuraton script for the latest installed Intel Fortran
# compiler for Intel 64 systems.

if [ -e "/opt/intel/bin/compilervars.sh" ]
then
	. "/opt/intel/bin/compilervars.sh" intel64
fi
