# Run the configuraton script for the latest installed Intel Fortran
# compiler for IA 32 systems.

if [ -e "/opt/intel/bin/compilervars.sh" ]
then
	. "/opt/intel/bin/compilervars.sh" ia32
fi
