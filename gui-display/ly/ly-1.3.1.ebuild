EAPI=8

DESCRIPTION="TUI display manager written in Zig"
HOMEPAGE="https://codeberg.org/fairyglade/ly"
SRC_URI="https://codeberg.org/fairyglade/ly/archive/v1.3.1.tar.gz -> ly-1.3.1.tar.gz"

LICENSE="WTFPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm64"
IUSE=""

DEPEND="
    dev-lang/zig
"
RDEPEND="${DEPEND}"

src_unpack() {
    default
    # The tarball unpacks to "ly-1.3.1", so S is correct
}

src_compile() {
    cd "${S}" || die
    zig build -Drelease-safe || die "zig build failed"
}

src_install() {
    # install binary
    dodir /usr/bin
    install -m 0755 zig-out/bin/ly "${D}/usr/bin/ly"
}
