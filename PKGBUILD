pkgname="stellaros-vm-service"
pkgver="0.1"
pkgrel=1
pkgdesc="Stellar OS systemd service file"
arch=("any")
url="https://github.com/stellaros/stellaros-vm-service"
license=("GPL-3.0-or-later")
groups=("stellaros")
depends=("fish" "virtualbox")
package(){
    install -Dm755 $srcdir/stellaros-vm.service $pkgdir/usr/lib/systemd/system/stellaros-vm.service
    install -Dm755 $srcdir/start-vm.fish $pkgdir/usr/lib/stellaros/start-vm.fish
    install -Dm755 $srcdir/save-vm.fish $pkgdir/usr/lib/stellaros/save-vm.fish
}
