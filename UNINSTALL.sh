source config/path.conf

if  [ "$(uname)" == "Linux" ]; then
	echo Linux
elif [ "$(uname)" == "Darwin" ]; then
	printf "Uninstalling biovim... \\n"
	sudo rm ~/.biovimrc
	sudo rm /usr/local/bin/biovim
	printf "Uninstalling biocterm... \\n"
else
	echo No
fi

printf "\n"

