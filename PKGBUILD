pkgname=arch-efi-config
pkgver=0.2
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
	549a80e610cc062b36869caad676401a40d2e01968d7745463350d49bbb802fd
	100a65f069477d6747e2c2af35a1ec40a28fd169d0c917113e1f16e50c08bc23
	192279ddac502360e3b40642fe95c1ba9b7486d853c50ea8eeff3a5ea2171c2d
	9f97094b575cc5ec33fdf1d903931851204dfb74f616d67f2669e8c679ad997f
)

package() {
	install -Dm600 config $pkgdir/etc/arch-efi-config/config
	install -Dm600 command-line $pkgdir/etc/arch-efi-config/command-line
	install -Dm644 91-make-unified-image.hook $pkgdir/usr/share/libalpm/hooks/91-make-unified-image.hook
	install -Dm644 91-make-unified-image-fallback.hook $pkgdir/usr/share/libalpm/hooks/91-make-unified-image-fallback.hook
	install -Dm544 install.sh $pkgdir/boot/install.sh
	install -Dm544 update-unified-image $pkgdir/usr/bin/update-unified-image
}
