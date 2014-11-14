# Include the path for running VisIt. Note that VisIt automatically
# will load the most current installed version. It's startup scripts
# allow the user to select different versions that may be installed
# on the system, so there is no need to handle it here.

if [ -z "${PATH}" ]
then
	PATH="/opt/llnl/VisIt/bin";
else
	PATH="/opt/llnl/VisIt/bin:${PATH}";
fi
export PATH;