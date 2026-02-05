# Distributed under the terms of the SIL Open Font License 1.1

EAPI=8
inherit font


DESCRIPTION="Maple Mono font (TTF)"
HOMEPAGE="https://github.com/subframe7536/maple-font"
SRC_URI="https://github.com/subframe7536/maple-font/releases/download/v${PV}/MapleMono-TTF.zip -> ${P}.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ppc ppc64 s390 sh sparc x86 ~x86-fbsd"

BDEPEND="app-arch/unzip"

S="${WORKDIR}"
FONT_SUFFIX="ttf"
