pkgname=arch-efi-config
pkgver=0.1
pkgrel=1
arch=(x86_64)
depends=(
	binutils coreutils grep sed gawk util-linux
)
install=.INSTALL
source=(
	config
	command-line.template
	91-make-unified-image.hook
	91-make-unified-image-fallback.hook
	update-command-line
	install.sh
)
sha256sums=(
	d9d42ee0a0b939a52bb3855fbcfb0334e5f4675ace264d30d18fcad2338b17de
	5952f43e125d64d9ac390b334e7ef6c96031245aef69db6465216032b57e5463
	6c5be1839d0600f2a39e1ec966c1007754539dadbf4073691d82685d3154746b
	6f4954fbb2319896590a56cae31489d2ee579fa1896671c3b850f97e7aa47eee
	62a7b98ede5545af853ba93ab26002d9219f30fa275a826f442c3c3936573028
	ccc9a5c5a5ab09efd45a13cab6404840d820d3d2936685a728295911fb31c5c1
)

package() {
	install -Dm600 config $pkgdir/etc/arch-efi-config/config
	install -Dm600 command-line.template $pkgdir/etc/arch-efi-config/command-line.template
	install -Dm644 91-make-unified-image.hook $pkgdir/usr/share/libalpm/hooks/91-make-unified-image.hook
	install -Dm644 91-make-unified-image-fallback.hook $pkgdir/usr/share/libalpm/hooks/91-make-unified-image-fallback.hook
	install -Dm544 update-command-line $pkgdir/usr/bin/update-command-line
	install -Dm544 install.sh $pkgdir/boot/install.sh
}
