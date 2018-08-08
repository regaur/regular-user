# Maintainer: Jan Boelsche <jan@lagomorph.de>

pkgname='regular-user'
pkgver=1.0
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
source=(Makefile .vimrc .tmux.conf authorized_keys )

sha256sums=('e89ec6761a9ab09f9eb7b8fdaff3744f675e9eaaab60ca503f8bea15dcc13503'
            '46c43f103be8f3d9294158ced51a89aa9d5a0215edd1e36584e92817a947d0e7'
            '554807de544674eacbd7a56aad43296ff7ca4c0e56a5141436b81f9795fc73cf'
            '670b837e2146ff73c29dcde79f880d9e4a84a07b9cc420503b35e511507e86a0')

package() {
	make DESTDIR="$pkgdir/" install
}
