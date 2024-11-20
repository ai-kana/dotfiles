
install:
	rm -rf ~/.config/i3
	rm -rf ~/.config/kitty
	rm -rf ~/.config/nvim
	rm -f ~/.tmux.conf
	rm -f ~/.tmux.sh
	rm -f ~/.bashrc
	cp -r i3 ~/.config/i3
	cp -r kitty ~/.config/kitty
	cp -r nvim ~/.config/nvim
	cp .tmux.conf ~/.tmux.conf
	cp .tmux.sh ~/.tmux.sh
	cp .bashrc ~/.bashrc

update:
	rm -rf i3
	rm -rf kitty
	rm -rf nvim
	rm -f .tmux.conf
	rm -f .tmux.sh
	rm -f .bashrc
	cp -r ~/.config/i3 i3
	cp -r ~/.config/kitty kitty
	cp -r ~/.config/nvim nvim
	cp ~/.tmux.conf .tmux.conf
	cp ~/.tmux.sh .tmux.sh
	cp ~/.bashrc .bashrc
