pkgname=arch-efi-config
pkgver=0.3
pkgrel=1
arch=(x86_64)
depends=(
	binutils coreutils util-linux
)
install=.INSTALL
source=(
	config
	command-line.default
	91-make-unified-image.hook
	91-make-unified-image-zen.hook
	91-make-unified-image-fallback.hook
	install.sh
	update-unified-image
)
sha256sums=(
	3ee615bc0947c34d02d5703a83aee875dbfa2695abd9975022079fae934cb678
	6b609c79480c8037bdfc15b3d59fac8479e40a1850a9d6aee8d85424cacc454d
	953269b4f84f65ff9ea93eb4f22c59421ac78df3c819fe1bcd502e55cb7b7c1b
	47c3699481123404c3b6b21fc3097c0c59e6605262c771868a8d842e07b5ed70
	f7d58fec324a5c3e287b907853b9c6f1cd9eb2869124d8fa67ed4bbf87178474
	df427580f6f100d6f937bb44462de57788dab1e5ca8c27f7b35242cfeb43893a
	884b57d4afb6e3373aa5f67f08d5890eacedb77ba48df8e885d7b7178c1fd6aa
)

package() {
	install -Dm600 config $pkgdir/etc/arch-efi-config/config
	install -Dm600 command-line.default $pkgdir/etc/arch-efi-config/command-line.default
	install -Dm644 91-make-unified-image.hook $pkgdir/usr/share/libalpm/hooks/91-make-unified-image.hook
	install -Dm644 91-make-unified-image-zen.hook $pkgdir/usr/share/libalpm/hooks/91-make-unified-image-zen.hook
	install -Dm644 91-make-unified-image-fallback.hook $pkgdir/usr/share/libalpm/hooks/91-make-unified-image-fallback.hook
	install -Dm544 install.sh $pkgdir/boot/install.sh
	install -Dm544 update-unified-image $pkgdir/usr/bin/update-unified-image
}
