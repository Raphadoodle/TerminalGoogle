# Maintainer: Raphael Tittel <raphaeltittel@gmail.com>
pkgname=TerminalGoogle
pkgver=1.00
pkgrel=1
epoch=
pkgdesc="A useful way to use google in your terminal."
arch=(x86_64)
url="https://github.com/Raphadoodle/TerminalGoogle.git"
license=('GPL')
groups=()
depends=(gcc gcc-libs w3m)
makedepends=(git)
checkdepends=()
optdepends=()
provides=()
conflicts=()
replaces=()
backup=()
options=()
install=
changelog=
source=("git+$url")
noextract=()
sha256sums=('SKIP')
validpgpkeys=()

build() {
	cd TerminalGoogle
	make
}


package() {
	cd TerminalGoogle
	sudo make DESTDIR="TerminalGoogle/" install
	install -Dm644 LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
	install -Dm644 README.md "${pkgdir}/usr/share/doc/${pkgname}/README.md"
}
