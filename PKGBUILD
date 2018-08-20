# Maintainer: Jan Boelsche <jan@lagomorph.de>

pkgname='regular-user'
pkgver=1.0
pkgrel=3
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

sha256sums=('70b7312ed1402028ceafee9b4d6337201d00757193846945da4b35e91630e0de'
            'a8668316913ad6a3aa28c814d1cc65c6215574bf22010cbbac2ae3470f52478d'
            '554807de544674eacbd7a56aad43296ff7ca4c0e56a5141436b81f9795fc73cf'
            '670b837e2146ff73c29dcde79f880d9e4a84a07b9cc420503b35e511507e86a0')

package() {
	make DESTDIR="$pkgdir/" install
}
