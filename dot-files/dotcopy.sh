#!/bin/bash
#
# Script to link dotfiles to and from the local repo
# to the approriate places.
#
# Useful with Ubuntu and Mac Lion flavors - because 
# that's what I use :)
#

p="$HOME/faster-hackery/dot-files";

while true :
do

	echo "1. Ubuntu ADD link from ~ to dot-files"
	echo "2. Ubuntu REMOVE link from dot-files to ~"
	echo "3. Mac ADD link ~ to dot-files"
	echo "4. Mac REMOVE link from dot-files to ~"
	echo "5. Update faster-hackery & submodules"
	echo "6. Exit"
	echo -ne "> "
	read opt
	case $opt in

	1)  #Ubuntu ADD link

            echo "Linking...";

            #ubuntu dircolors
            ln -s $p/dircolors $HOME/.dircolors;

            #vim
            rm ~/.vim -R;
            ln -s $p/vim $HOME/.vim;
            ln -s $p/vim/vimrc $HOME/.vimrc;

            #git
            ln -s $p/gitconfig $HOME/.gitconfig;
            ln -s $p/gitignore $HOME/.gitignore;

            #screen
            ln -s $p/screenrc $HOME/.screenrc;

            echo "Done.";
            #exit 1
            ;;

	2)  #Ubuntu REMOVE link

            echo "Un-Linking...";

            #ubuntu dircolors
            rm $HOME/.dircolors;

            #vim
            rm $HOME/.vim;
            rm $HOME/.vimrc;

            #git
            rm $HOME/.gitconfig;
            rm $HOME/.gitignore;

            #screen
            rm $HOME/.screenrc;

            echo "Done.";
            #exit 1
            ;;

	3)  #Mac ADD link

            echo "Linking...";

            #aliases
            ln -s $p/aliases $HOME/.aliases;
            
            #exports
            ln -s $p/exports $HOME/.exports;

            #inputrc
            ln -s $p/inputrc $HOME/.inputrc;

            #functions
            ln -s $p/functions $HOME/.functions;

            #mac bash_prompt
            ln -s $p/bash_prompt $HOME/.bash_prompt;

            #mac bash_profile
            ln -s $p/bash_profile $HOME/.bash_profile;

            #vim
            ln -s $p/vim $HOME/.vim;
            ln -s $p/vim/vimrc $HOME/.vimrc;

            #git
            ln -s $p/gitconfig $HOME/.gitconfig;
            ln -s $p/gitignore $HOME/.gitignore;

            #screen
            ln -s $p/screenrc $HOME/.screenrc;

            #wgetrc
            ln -s $p/wgetrc $HOME/.wgetrc;

            echo "Done.";
            #exit 1
            ;;

	4)  #Mac REMOVE link

            echo "Un-Linking...";

            #aliases
            rm $HOME/.aliases;

            #exports
            rm $HOME/.exports;

            #inputrc
            rm $HOME/.inputrc;

            #functions
            rm $HOME/.functions;

            #mac bash_prompt;
            rm $HOME/.bash_prompt;

            #mac bash_profile
            rm $HOME/.bash_profile;

            #vim
            rm -R $HOME/.vim;
            rm $HOME/.vimrc;

            #git
            rm $HOME/.gitconfig;
            rm $HOME/.gitignore;

            #screen
            rm $HOME/.screenrc;

            #wgetrc
            rm $HOME/.wgetrc;

            echo "Done.";
            #exit 1
            ;;

        5)  #Update faster-hackery & submodules
            
            cd ~/faster-hackery

            git submodule update --init;

            echo "Done.";
            ;;

        6)  echo "Exiting...";
            exit 1;;

        *)  echo "$opt is an invalid option.";
            echo "Press [enter] key to continue...";
            read enterKey;;

	esac
done
