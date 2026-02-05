# Distributed under the terms of the SIL Open Font License 1.1

EAPI=8
inherit font

MY_PV="2025.10.09-6"

DESCRIPTION="Ioskeley Mono font (TTF hinted)"
HOMEPAGE="https://github.com/ahatem/IoskeleyMono"
SRC_URI="https://github.com/ahatem/IoskeleyMono/releases/download/${MY_PV}/IoskeleyMono-TTF-Hinted.zip -> ${P}.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~x86-fbsd"

BDEPEND="app-arch/unzip"

S="${WORKDIR}"

FONT_SUFFIX="ttf"
