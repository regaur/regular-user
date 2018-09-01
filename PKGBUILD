# Maintainer: Jan Boelsche <jan@lagomorph.de>

pkgname='regular-user'
pkgver=1.1
pkgrel=1
pkgdesc='Creates a user called "regular" and installs some dotfiles and my ssh public key'
packager='Jan Boelsche'
arch=('any')
license=('GPL')
groups=()
depends=()
makedepends=()
checkdepends=()
optdepends=()
install=${pkgname}.install
source=(
  '.vimrc'
  '.tmux.conf'
  'authorized_keys'
  'regular'
)

sha256sums=('a8668316913ad6a3aa28c814d1cc65c6215574bf22010cbbac2ae3470f52478d'
            '554807de544674eacbd7a56aad43296ff7ca4c0e56a5141436b81f9795fc73cf'
            '670b837e2146ff73c29dcde79f880d9e4a84a07b9cc420503b35e511507e86a0'
            '954ee494fada6a61510f3d8e7a0859e757abb4d5f205c9a08a95aff4f6bfba8a')

package() {
  home="${pkgdir}/home/regular"
	install -m 700 -d "${home}"
	install -m 600 -t "${home}" .tmux.conf .vimrc
	install -m 700 -d "${home}/.ssh"
	install -m 644 -t "${home}/.ssh" authorized_keys
	
  install -Dm 644 -t "${pkgdir}/var/lib/AccountsService/users/" regular
}
