# pip install -r config/requirements.txt

#!/bin/bash

# BIOCSWIRL="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source config/path.conf

printf " usage: bash INSTALL.sh <vimrc_path (optional)> \\n"

if [ -z "$1" ]; then
	printf "\\n"
	printf " biocswirl v1.0.0 \\n"
	printf " -----------------------\\n"
	printf "\\n"
	printf " Select: (1) Auto-installation (2) Manual installation (Q) quit\\n"
	printf "\\n"
	read -p "  Enter: " input
	case $input in
		[1]*)
			installation='auto';;
		[2]*)
			installation='manual';;
		[Q]*)
			exit 1;;
	esac
else
	installation='$1'
fi

if  [ "$(uname)" == "Linux" ]; then
	echo Linux
elif [ "$(uname)" == "Darwin" ]; then
	if[]
		echo sudo brew install tmux;
	if [$installation == "auto"]
		sudo cp $BIOCSWIRL_PATH/config/biovim/.biovimrc ~
		sudo cp $BIOCSWIRL_PATH/config/biovim/biovim /usr/local/bin
	fi
	else
		read -p " Please specify the location of your .vimrc: " input
		sudo cp $BIOCSWIRL_PATH/config/biovim/.biovimrc ~
		sudo cp $BIOCSWIRL_PATH/config/biovim/biovim /usr/local/bin
else
	echo No
fi

printf "\n"

# if [ "$port" == "sublime" ]; then

# 	printf " Installing sublime-bioSyntax...\n\n"
# 	printf "  (Y): Install manually with script (may require sudo/admin privileges depending on OS).\n"
# 	printf "  (N): Install via sublime Package Control (if installed, recommended).\n"
# 	printf "\n"
# 	printf "\t- Open Sublime.\n"
# 	printf "\t- Open command line: ctrl/cmd+shift+p\n"
# 	printf "\t- 'Package Control:bioSyntax'\n"
# 	printf ""

# 	read -p "  Enter: " yn
# 	case $yn in
# 		[Yy]*)
# 			printf "\n" # continue
# 			;;
# 		[Nn]*)
# 			exit 1
# 			;;
# 	esac

# elif [ "$port" == "vim" ]; then

# 	printf " Installing vim-bioSyntax...\n\n"
# 	printf "  (1): Install manually with script (may require sudo/admin privileges depending on OS).\n"
# 	printf "  (2): Install via Pathogen (if installed, recommended).\n"
# 	printf "\n"
# 	printf "\t(sudo) git clone https://github.com/bioSyntax/bioSyntax-vim.git <vim-bundle-path>\n"
# 	printf "\tMac/Linux Path: ~/.vim/bundle\n"
# 	printf "\tWindows Path: \$HOME/vimfiles\n"
# 	printf "\n"
# 	printf "  (3): exit\n"
# 	printf "\n"

# 	read -p "  Enter: " yn

# elif [ "$port" == "less" ]; then

# 	printf " Installing less-bioSyntax...\n\n"
# 	printf "  (y): Install source highlight + bioSyntax (may require sudo/admin privileges depending on OS)\n"
# 	printf "  (n): exit\n"
# 	printf "\n"
# 	printf " Note:\n"
# 	printf "\t- less installation requires bioSyntax folder to be placed in and run from the root directory\n"
# 	printf "\t- less installation requires source-highlight\n"
# 	printf "\t  it will be installed or updated. (requires sudo)\n"
# 	printf "\t"
# 	printf "\t- 'less' will be aliased to 'less -NSi -#10' for readability."
#   printf "\t   To unset this, edit your '~/.bashrc' file after install."

# 	read -p "  Enter: " yn
# 	case $yn in
# 		[Yy]*)
# 			printf "\n" # continue
# 			;;
# 		*)
# 			exit 0
# 			;;
# 	esac
# elif [ "$port" == "gedit" ]; then

# 	printf " Installing gedit-bioSyntax...\n\n"
# 	printf "  (y): Install bioSyntax for gedit / GTK sourceview 3.0\n"
# 	printf "  (n): exit\n"
# 	printf "\n"
# 	read -p "  Enter: " yn
# 	case $yn in
# 		[Yy]*)
# 			printf "\n" # continue
# 			;;
# 		*)
# 			exit 0
# 			;;
# 	esac
# else
# 	printf " I don't know which port of bioSyntax you would like to install.\n"
# 	printf " try \`bash bioSyntax_INSTALL.sh\' for usage\n\n"
# 	exit 3 # exit with incorrect port declared
# fi

# # Mac OSX - Available for: Sublime Text 3, Vim
# if  [ "$(uname)" == "Darwin" ]; then
# 	printf " "
# 	if [ "$port" == "vim" ]; then
# 		# CREATES/SETS .vimrc FILE AND ENABLES AUTOMATIC SYNTAX HIGHLIGHTING
# 		if [ ! -e ~/.vimrc ]; then
# 			touch ~/.vimrc;
# 		fi
# 		if ! grep -q ":syntax enable" ~/.vimrc; then
# 			echo 'Adding the line ":syntax enable" to your .vimrc file'
# 			echo ":syntax enable" >> ~/.vimrc;
# 		fi

# 		# CHECKS IF USER WANTS INSTALLATION VIA PATHOGEN
# 		case $yn in
# 			[1]*)
# 				printf "\n" # continue
# 				;;
# 			[2]*)
# 				sudo git clone https://github.com/bioSyntax/bioSyntax-vim.git ~/.vim/bundle/bioSyntax-vim &&
# 				printf "Installation successful. Restart vim and you will now have pretty formats!\\n"
# 				printf "Thank you for your support!\\n"
# 				exit 0
# 				;;
# 			*)
# 				exit 1
# 				;;
# 		esac

# 		printf "Setting up %s syntax file(s) and style file(s) for Mac OSX Vim.\\n" "$2"

# 		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
# 		SOURCE="${BIOSYNTAX}/vim/"
# 		if [ ! -d ~/.vim/ ]; then
# 			mkdir ~/.vim/;
# 		fi
# 		FPATH=~/.vim/syntax/
# 		if [ ! -d "${FPATH}" ]; then
# 			mkdir "${FPATH}";
# 		fi
# 		TPATH=~/.vim/ftdetect/
# 		if [ ! -d "${TPATH}" ]; then
# 			mkdir "${TPATH}";
# 		fi

# 		# COPIES COLOR SCHEME TO RIGHT PATH AND CHANGES IT TO READ-ONLY
# 		if [ ! -d ~/.vim/colors/ ]; then
# 			mkdir ~/.vim/colors/;
# 		fi

# 		sudo install -m 0644 "${SOURCE}/colors/bioSyntax.vim" ~/.vim/colors/

# 		# COPIES ALL AUTO-DETECT FILES T0 RIGHT PATHS AND CHANGES THEM TO READ-ONLY
# 		THEME=".vim"
# 		THEMES=(`find "${SOURCE}/ftdetect/" -name "*${THEME}" -print`)

# 		if [ -z "$2" ]; then
# 			for ((t=0; t<${#THEMES[@]}; t++)); do
# 				sudo install -m 0644 "${THEMES[${t}]}" "${TPATH}"
# 			done
# 		else
# 			sudo install -m 0644 "${SOURCE}/ftdetect/{$2}.vim" "${TPATH}"
# 		fi

# 		# LISTS ALL SYNTAX FILE(S)
# 		FILE=".vim"
# 		FILES=(`find "${SOURCE}/syntax/" -name "*${FILE}" -print`)

# 		# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
# 		# SUBLIME (MANUAL, as of MacOS High Sierra Update)/LESS/GEDIT INSTALLATION REQUIRES SUDO
# 		if [ -z "$2" ]; then
# 			for ((f=0; f<${#FILES[@]}; f++)); do
# 				sudo install -m 0644 "${FILES[${f}]}" "${FPATH}"
# 			done
# 		else
# 			sudo install -m 0644 "${SOURCE}/syntax/${2}${FILE}" "${FPATH}"
# 		fi


# 	# gedit currently not supported for mac
# 	#elif [ "$port" == "gedit" ]; then
# 	#	printf "Setting up %s lang file(s) and bioSyntax theme for Mac OSX Gedit.\\n" "$2"
# 	#	FPATH=/
# 	#	TPATH=/

# 	elif [ "$port" == "less" ]; then

# 		printf "Installing/updating brew and source-highlight for Less and setting up %s lang file(s) and style file(s) for Mac OSX Less.\\n" "$2"
# 		# CHECKS IF BREW IS INSTALLED. IF IT IS, UPDATES IT, IF NOT, INSTALLS IT
# 		which -s brew
# 		if [[ $? != 0 ]] ; then
# 			printf "bioSyntax for less is dependent on the source-highlight package, which needs to be installed via Homebrew. Homebrew is not currently installed on your system. Install brew now? (y/n)\\n"
# 			read ans
# 			if echo "$ans" | grep -iq "^y"; then
# 				ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# 			else
# 				printf "bioSyntax installation cancelled.\\n"
# 				exit 0
# 			fi
# 		else
# 			printf "bioSyntax for less is dependent on the source-highlight package, which needs to be installed via Homebrew. Update brew now? (y/n)\\n"
# 			read ans
# 			if echo "$ans" | grep -iq "^y"; then
# 				brew update
# 			fi
# 		fi

# 		# CHECKS IF SOURCE-HIGHLIGHT PACKAGE IS INSTALLED. IF IT IS, UPDATES IT, IF NOT, INSTALLS IT
# 		if [[ ! -z `brew ls --versions "source-highlight"` ]]; then
# 			printf "source-highlight is installed in your system. Update now? (y/n)\\n"
# 			read ans
# 			if echo "$ans" | grep -iq "^y"; then
# 				brew upgrade source-highlight
# 			fi
# 		else
# 			printf "source-highlight needs to be installed in your system for bioSyntax to function. Install now? (y/n)\\n"
# 			read ans
# 			if echo "$ans" | grep -iq "^y"; then
# 				brew install source-highlight
# 			else
# 				printf "bioSyntax installation cancelled.\\n"
# 				exit 0
# 			fi
# 		fi

# 		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME FILE(S), LESSPIPE SCRIPT AND SYNTAX FILE(S)
# 		SOURCE="${BIOSYNTAX}/less/"
# 		HIGHLIGHT="/usr/local/opt/source-highlight/share/source-highlight/"
# 		FPATH="/usr/local/opt/source-highlight/share/source-highlight/"
# 		TPATH="/usr/local/opt/source-highlight/share/source-highlight/"

# 		# DETECTS DEFAULT SHELL AND APPENDS LESSPIPE TO APPROPRIATE RC FILE
# 		if [ `echo $SHELL` == "/bin/bash" ]; then
# 			if ! grep -q "bioSyntax" ~/.bash_profile; then
# 				cat ${SOURCE}/bp_append.txt >> ~/.bash_profile;
# 			fi
# 			if ! grep -q "bioSyntax" ~/.bashrc; then
# 				cat ${SOURCE}/bp_append.txt >> ~/.bashrc;
# 			fi
# 		elif [ `echo $SHELL` == "/bin/zsh" ]; then
# 			if ! grep -q "bioSyntax" ~/.zprofile; then
# 				cat ${SOURCE}/bp_append.txt >> ~/.zprofile;
# 			fi
# 			if ! grep -q "bioSyntax" ~/.zshrc; then
# 				cat ${SOURCE}/bp_append.txt >> ~/.zshrc;
# 			fi
# 		else
# 			if ! grep -q "bioSyntax" ~/.profile; then
# 				cat ${SOURCE}/bp_append.txt >> ~/.profile;
# 			fi
# 		fi

# 		# COPIES LESSPIPE SCRIPT AND THEME FILE(S) TO RIGHT PATHS, CHANGES LESSPIPE SCRIPT TO EXECUTABLE AND THE REST TO READ-ONLY
# 		sudo install -m 0755 "${SOURCE}/src-hilite-lesspipe-bio-MAC.sh" "/usr/local/bin/src-hilite-lesspipe.sh"
# 		sudo install -m 0755 "${SOURCE}/bioSyntax.outlang" "${TPATH}"
# 		sudo install -m 0755 "${SOURCE}/bioSyntax-vcf.outlang" "${TPATH}"

# 		THEME=".style"
# 		THEMES=(`find "${SOURCE}" -name "*${THEME}" -print`)

# 		if [ -z "$2" ]; then
# 			for ((t=0; t<${#THEMES[@]}; t++)); do
# 				sudo install -m 0644 "${THEMES[${t}]}" "${TPATH}"
# 			done
# 		else
# 			sudo install -m 0644 "${SOURCE}/${2}${THEME}" "${TPATH}"
# 		fi

# 		# LISTS ALL SYNTAX FILES
# 		FILE=".lang"
# 		FILES=(`find "${SOURCE}" -name "*${FILE}" -print`)

# 		# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
# 		# SUBLIME (MANUAL, as of MacOS High Sierra Update)/LESS/GEDIT INSTALLATION REQUIRES SUDO
# 		if [ -z "$2" ]; then
# 			for ((f=0; f<${#FILES[@]}; f++)); do
# 				sudo install -m 0644 "${FILES[${f}]}" "${FPATH}"
# 			done
# 		else
# 			sudo install -m 0644 "${SOURCE}/${2}${FILE}" "${FPATH}"
# 		fi

# 	else
# 		printf "ERROR: %s is not a valid/supported editor for MacOS. Currently, bioSyntax is available for sublime, less, and vim for MacOS.\\n" "$port"
# 		exit 1
# 	fi

# # Linux Ubuntu - Available for: Sublime Text 3, Gedit, Vim, Less
# elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
# 	if [ "$port" == "sublime" ]; then

# 		printf "Setting up %s syntax file(s) and bioSyntax Color Scheme for Linux Sublime Text 3.\\n" "$2"
# 		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
# 		SOURCE="${BIOSYNTAX}/sublime/"
# 		FPATH=~/.config/sublime-text-3/Packages/bioSyntax/
# 		if [ ! -d "${FPATH}" ]; then
# 			mkdir "${FPATH}";
# 		fi
# 		TPATH=~/.config/sublime-text-3/Packages/bioSyntax/

# 		# COPIES THEME FILE TO RIGHT PATH AND CHANGESG IT TO READ-ONLY
# 		THEME="bioSyntax.tmTheme"

# 		install -m 0644 "${SOURCE}/${THEME}" "${TPATH}/${THEME}"

# 		# LISTS ALL SYNTAX FILES
# 		FILE=".sublime-syntax"
# 		FILES=(`find "${SOURCE}" -name "*${FILE}" -print`)

# 		# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
# 		# LESS/GEDIT INSTALLATION REQUIRES SUDO
# 		if [ -z "$2" ]; then
# 			for ((f=0; f<${#FILES[@]}; f++)); do
# 				install -m 0644 "${FILES[${f}]}" "${FPATH}"
# 			done
# 		else
# 			install -m 0644 "${SOURCE}/${2}${FILE}" "${FPATH}"
# 		fi

# 	elif [ "$port" == "gedit" ]; then

# 		printf "Setting up %s lang file(s) and bioSyntax theme for Linux Gedit.\\n" "$2"
# 		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
# 		SOURCE="${BIOSYNTAX}/gedit"
# 		FPATH="$HOME/.local/share/gtksourceview-3.0/language-specs"
# 		TPATH="$HOME/.local/share/gtksourceview-3.0/styles"

# 		# MAKE DIR IF IT DOESN'T EXIST
# 		mkdir -p $TPATH
# 		mkdir -p $FPATH

# 		# COPIES THEME FILE TO RIGHT PATH AND CHANGES IT TO READ-ONLY
# 		THEME="bioSyntax.xml"

# 		install -m 0644 "${SOURCE}/styles/${THEME}" "${TPATH}/${THEME}"

# 		# LISTS ALL SYNTAX FILES
# 		FILE=".lang"
# 		FILES=(`find ${SOURCE}/language-specs/ -name "*${FILE}" -print`)

# 		# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
# 		# LESS/GEDIT INSTALLATION REQUIRES SUDO
# 		if [ -z "$2" ]; then
# 			for ((f=0; f<${#FILES[@]}; f++)); do
# 				install -m 0644 "${FILES[${f}]}" "${FPATH}"
# 			done
# 		else
# 			install -m 0644 "${SOURCE}/language-specs/${2}${FILE}" "${FPATH}"
# 		fi

# 	elif [ "$port" == "vim" ]; then
# 		# CREATES/SETS .vimrc FILE AND ENABLES AUTOMATIC SYNTAX HIGHLIGHTING
# 		if [ ! -e ~/.vimrc ]; then
# 			touch ~/.vimrc;
# 		fi
# 		if ! grep -q "syntax enable" ~/.vimrc; then
# 			echo 'Adding the line ":syntax enable" to your .vimrc file'
# 			echo "syntax enable" >> ~/.vimrc;
# 		fi

# 		# CHECKS IF USER WANTS INSTALLATION VIA PATHOGEN
# 		case $yn in
# 			[1]*)
# 				printf "\n" # continue
# 				;;
# 			[2]*)
# 				git clone https://github.com/bioSyntax/bioSyntax-vim.git ~/.vim/bundle/bioSyntax-vim &&
# 				printf "Installation successful. Restart vim and you will now have pretty formats!\\n"
# 				printf "Thank you for your support!\\n"
# 				exit 0
# 				;;
# 			*)
# 				exit 1
# 				;;
# 		esac

# 		printf "Setting up %s syntax file(s) and style file(s) for Linux vim.\\n" "$2"

# 		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
# 		SOURCE="${BIOSYNTAX}/vim/"

# 		if [ ! -d ~/.vim/ ]; then
# 			mkdir ~/.vim/;
# 		fi
# 		FPATH=~/.vim/syntax/
# 		if [ ! -d "${FPATH}" ]; then
# 			mkdir "${FPATH}";
# 		fi
# 		TPATH=~/.vim/ftdetect/
# 		if [ ! -d "${TPATH}" ]; then
# 			mkdir "${TPATH}";
# 		fi

# 		# COPIES COLOR SCHEME TO RIGHT PATH AND CHANGES IT TO READ-ONLY
# 		if [ ! -d ~/.vim/colors/ ]; then
# 			mkdir ~/.vim/colors/;
# 		fi
# 		install -m 0644 "${SOURCE}/colors/bioSyntax.vim" ~/.vim/colors/

# 		# COPIES ALL AUTO-DETECT FILES T0 RIGHT PATHS AND CHANGES THEM TO READ-ONLY
# 		THEME=".vim"
# 		THEMES=(`find "${SOURCE}/ftdetect/" -name "*${THEME}" -print`)

# 		if [ -z "$2" ]; then
# 			for ((t=0; t<${#THEMES[@]}; t++)); do
# 				install -m 0644 "${THEMES[${t}]}" "${TPATH}"
# 			done
# 		else
# 			install -m 0644 "${SOURCE}/ftdetect/{$2}${THEME}" "${TPATH}"
# 		fi

# 		# LISTS ALL SYNTAX FILE(S)
# 		FILE=".vim"
# 		FILES=(`find "${SOURCE}/syntax/" -name "*${FILE}" -print`)

# 		# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
# 		# LESS/GEDIT INSTALLATION REQUIRES SUDO
# 		if [ -z "$2" ]; then
# 			for ((f=0; f<${#FILES[@]}; f++)); do
# 				install -m 0644 "${FILES[${f}]}" "${FPATH}"
# 			done
# 		else
# 			install -m 0644 "${SOURCE}/syntax/${2}${FILE}" "${FPATH}"
# 		fi


# 	elif [ "$port" == "less" ]; then

# 		printf "Installing/updating source-highlight for Less and setting up\\n"
# 		printf "%s lang file(s) and style file(s) for Linux Less.\\n" "$2"
# 		printf "Run:\\n"
# 		printf "  sudo apt-get update\\n"
# 		printf "  sudo apt-get install source-highlight\\n"
# 		# UPDATES APPS AND UPDATES/INSTALLS SOURCE-HIGHLIGHT
# 		# PROMPT MOVED UPSTREAM
# 		sudo apt-get update
# 		sudo apt-get install source-highlight

# 		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
# 		SOURCE="${BIOSYNTAX}/less/"
# 		HIGHLIGHT="$HOME/.local/share/source-highlight"
# 		FPATH=$HIGHLIGHT
# 		TPATH=$HIGHLIGHT
# 		mkdir -p $HIGHLIGHT

# 		# DETECTS DEFAULT SHELL AND APPENDS LESSPIPE TO APPROPRIATE RC FILE
# 		if [ `echo $SHELL` == "/bin/bash" ]; then
# 			if ! grep -q "bioSyntax" ~/.bash_profile; then
# 				cat ${SOURCE}/rc_append.txt >> ~/.bash_profile;
# 			fi
# 			if ! grep -q "bioSyntax" ~/.bashrc; then
# 				cat ${SOURCE}/rc_append.txt >> ~/.bashrc;
# 			fi
# 		elif [ `echo $SHELL` == "/bin/zsh" ]; then
# 			if ! grep -q "bioSyntax" ~/.zprofile; then
# 				cat ${SOURCE}/rc_append.txt >> ~/.zprofile;
# 			fi
# 			if ! grep -q "bioSyntax" ~/.zshrc; then
# 				cat ${SOURCE}/rc_append.txt >> ~/.zshrc;
# 			fi
# 		else
# 			if ! grep -q "bioSyntax" ~/.profile; then
# 				cat ${SOURCE}/rc_append.txt >> ~/.profile;
# 			fi
# 		fi

# 		# COPIES LESSPIPE SCRIPT AND THEME FILE(S) TO RIGHT PATHS, CHANGES LESSPIPE SCRIPT TO EXECUTABLE AND THE REST TO READ-ONLY
# 		install --mode=0755 "${SOURCE}/src-hilite-lesspipe-bio-LINUX.sh" "${TPATH}/src-hilite-lesspipe-bio.sh"
# 		sudo install --mode=0755 "${SOURCE}/bioSyntax.outlang" "${TPATH}"
# 		sudo install --mode=0755 "${SOURCE}/bioSyntax-vcf.outlang" "${TPATH}"

# 		THEME=".style"
# 		THEMES=(`find "${SOURCE}" -name "*${THEME}" -print`)

# 		if [ -z "$2" ]; then
# 			for ((t=0; t<${#THEMES[@]}; t++)); do
# 				install -m 0644 "${THEMES[${t}]}" "${TPATH}"
# 			done
# 		else
# 			install -m 0644 "${SOURCE}/${2}${THEME}" "${TPATH}"
# 		fi

# 		# LISTS ALL SYNTAX FILES
# 		FILE=".lang"
# 		FILES=(`find "${SOURCE}" -name "*${FILE}" -print`)

# 		# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
# 		# LESS/GEDIT INSTALLATION REQUIRES SUDO
# 		if [ -z "$2" ]; then
# 			for ((f=0; f<${#FILES[@]}; f++)); do
# 				install -m 0644 "${FILES[${f}]}" "${FPATH}"
# 			done
# 		else
# 			install -m 0644 "${SOURCE}/${2}${FILE}" "${FPATH}"
# 		fi


# 	else
# 		printf "ERROR: %s is not a valid/supported editor for Linux Ubuntu. Currently, bioSyntax is available for sublime, gedit, vim, and less for Linux Ubuntu.\\n" "$port"
# 		exit 1
# 	fi

# # Windows - Available for: Sublime Text 3, Gedit, Vim
# else
# 	if [ "$port" == "sublime" ]; then

# 		printf "Setting up %s syntax file(s) and bioSyntax Color Scheme for Windows Sublime Text 3.\\n" "$2"
# 		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
# 		SOURCE="${BIOSYNTAX}/sublime/"
# 		FPATH=~/AppData/Roaming/Sublime\ Text\ 3/Packages/bioSyntax/
# 		if [ ! -d "${FPATH}" ]; then
# 			mkdir "${FPATH}";
# 		fi
# 		TPATH=~/AppData/Roaming/Sublime\ Text\ 3/Packages/bioSyntax/

# 		# COPIES THEME FILE TO RIGHT PATH AND CHANGESG IT TO READ-ONLY
# 		THEME="bioSyntax.tmTheme"
# 		install -m 0644 "${SOURCE}/${THEME}" "${TPATH}/${THEME}"

# 		# LISTS ALL SYNTAX FILES
# 		FILE=".sublime-syntax"
# 		FILES=(`find "${SOURCE}" -name "*${FILE}" -print`)

# 		# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
# 		if [ -z "$2" ]; then
# 			for ((f=0; f<${#FILES[@]}; f++)); do
# 				install -m 0644 "${FILES[${f}]}" "${FPATH}"
# 			done
# 		else
# 			install -m 0644 "${SOURCE}/${2}${FILE}" "${FPATH}"
# 		fi

# 	elif [ "$port" == "gedit" ]; then

# 		printf "Setting up %s lang file(s) and bioSyntax theme for Windows Gedit.\\n" "$2"
# 		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
# 		SOURCE="${BIOSYNTAX}/gedit"
# 		FPATH=/c/Program\ Files/gedit/share/gtksourceview-3.0/language-specs
# 		TPATH=/c/Program\ Files/gedit/share/gtksourceview-3.0/styles

# 		# MAKE DIR IF IT DOESN'T EXIST
# 		mkdir -p $TPATH
# 		mkdir -p $FPATH

# 		# COPIES THEME FILE TO RIGHT PATH AND CHANGESG IT TO READ-ONLY
# 		THEME="bioSyntax.xml"

# 		install -m 0644 "${SOURCE}/styles/${THEME}" "${TPATH}/${THEME}"

# 		# LISTS ALL SYNTAX FILES
# 		FILE=".lang"
# 		FILES=(`find "${SOURCE}/language-specs/" -name "*${FILE}" -print`)

# 		# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
# 		if [ -z "$2" ]; then
# 			for ((f=0; f<${#FILES[@]}; f++)); do
# 				install -m 0644 "${FILES[${f}]}" "${FPATH}"
# 			done
# 		else
# 			install -m 0644 "${SOURCE}/language-specs/${2}${FILE}" "${FPATH}"
# 		fi

# 	elif [ "$port" == "vim" ]; then
# 		# CREATES/SETS _vimrc FILE AND ENABLES AUTOMATIC SYNTAX HIGHLIGHTING
# 		if [ ! -e $HOME/_vimrc ]; then
# 			touch $HOME/_vimrc;
# 		fi
# 		if ! grep -q ":syntax enable" $HOME/_vimrc; then
# 			echo 'Adding the line ":syntax enable" to your .vimrc file'
# 			echo ":syntax enable" >> $HOME/_vimrc;
# 		fi

# 		# CHECKS IF USER WANTS INSTALLATION VIA PATHOGEN
# 		case $yn in
# 			[1]*)
# 				printf "\n" # continue
# 				;;
# 			[2]*)
# 				git clone https://github.com/bioSyntax/bioSyntax-vim.git $HOME/vimfiles/bundle/bioSyntax-vim &&
# 				printf "Installation successful. Restart vim and you will now have pretty formats!\\n"
# 				printf "Thank you for your support!\\n"
# 				exit 0
# 				;;
# 			*)
# 				exit 1
# 				;;
# 		esac

# 		printf "Setting up %s syntax file(s) and style file(s) for Windows vim.\\n" "$2"

# 		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
# 		SOURCE="${BIOSYNTAX}/vim/"

# 		if [ ! -d $HOME/vimfiles/ ]; then
# 			mkdir $HOME/vimfiles/;
# 		fi
# 		FPATH=$HOME/vimfiles/syntax/
# 		if [ ! -d "${FPATH}" ]; then
# 			mkdir "${FPATH}";
# 		fi
# 		TPATH=$HOME/vimfiles/ftdetect/
# 		if [ ! -d "${TPATH}" ]; then
# 			mkdir "${TPATH}";
# 		fi

# 		# COPIES COLOR SCHEME TO RIGHT PATH AND CHANGES IT TO READ-ONLY
# 		if [ ! -d $HOME/vimfiles/colors/ ]; then
# 			mkdir $HOME/vimfiles/colors;
# 		fi
# 		install -m 0644 "${SOURCE}/colors/bioSyntax.vim" $HOME/vimfiles/colors/

# 		# COPIES ALL AUTO-DETECT FILES T0 RIGHT PATHS AND CHANGES THEM TO READ-ONLY
# 		THEME=".vim"
# 		THEMES=(`find "${SOURCE}/ftdetect/" -name "*${THEME}" -print`)
# 		if [ -z "$2" ]; then
# 			for ((t=0; t<${#THEMES[@]}; t++)); do
# 				install -m 0644 "${THEMES[${t}]}" "${TPATH}"
# 			done
# 		else
# 			install -m 0644 "${SOURCE}/ftdetect/{$2}${THEME}" "${TPATH}"
# 		fi

# 		# LISTS ALL SYNTAX FILE(S)
# 		FILE=".vim"
# 		FILES=(`find "${SOURCE}/syntax/" -name "*${FILE}" -print`)

# 		# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
# 		if [ -z "$2" ]; then
# 			for ((f=0; f<${#FILES[@]}; f++)); do
# 				install -m 0644 "${FILES[${f}]}" "${FPATH}"
# 			done
# 		else
# 			install -m 0644 "${SOURCE}/syntax/${2}${FILE}" "${FPATH}"
# 		fi

# 	#elif [ "$port" == "less" ]; then

# 		#printf "Installing/updating source-highlight for Less and setting up %s lang file(s) and style file(s) for Windows Less.\\n" "$2"
# 		#	FPATH=/
# 		#	TPATH=/

# 	else
# .
# 	fi

# fi

# printf "Installation successful. Restart %s and you will now have pretty formats!\\n" "$port"
# printf "Thank you for your support!\\n"
# exit 0
