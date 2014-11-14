# View 'man' pages in Preview.app

pman ()
{
	man -t "$@" | open -f -a Preview.app
}
