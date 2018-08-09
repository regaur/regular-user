HOME:=${DESTDIR}home/regular

install:
	install -m 700 -d "$(HOME)"
	install -m 600 -t "$(HOME)" .tmux.conf .vimrc
	install -m 700 -d "$(HOME)/.ssh"
	install -m 644 -t "$(HOME)/.ssh" authorized_keys
	
