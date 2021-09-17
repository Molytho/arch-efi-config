pkgname=arch-efi-config
pkgver=0.1
pkgrel=1
arch=(x86_64)
depends=(
	binutils coreutils util-linux
)
install=.INSTALL
source=(
	config
	command-line
	91-make-unified-image.hook
	91-make-unified-image-fallback.hook
	install.sh
	update-unified-image
)
sha256sums=(
	3ee615bc0947c34d02d5703a83aee875dbfa2695abd9975022079fae934cb678
	5952f43e125d64d9ac390b334e7ef6c96031245aef69db6465216032b57e5463
	7b2997be5d5ec27262aca9b98a8a7f30aeeab018528bc6afc69a62bf042f9388
	632118057afe4bc9079fddd3bd7a5f4b82fb0ecaf131e48abc8b494c342338c9
	192279ddac502360e3b40642fe95c1ba9b7486d853c50ea8eeff3a5ea2171c2d
	783b4f9aa1b1f885dc4c18ab6625ef465747e9e96ab8e9d23fd408129c7e3543
)

package() {
	install -Dm600 config $pkgdir/etc/arch-efi-config/config
	install -Dm600 command-line $pkgdir/etc/arch-efi-config/command-line
	install -Dm644 91-make-unified-image.hook $pkgdir/usr/share/libalpm/hooks/91-make-unified-image.hook
	install -Dm644 91-make-unified-image-fallback.hook $pkgdir/usr/share/libalpm/hooks/91-make-unified-image-fallback.hook
	install -Dm544 install.sh $pkgdir/boot/install.sh
	install -Dm544 update-unified-image $pkgdir/usr/sbin/update-unified-image
}
