# Distributed under the terms of the SIL Open Font License 1.1

EAPI=8
inherit font

MY_PV="2025.10.09-6"

DESCRIPTION="Ioskeley Mono font (TTF hinted)"
HOMEPAGE="https://github.com/ahatem/IoskeleyMono"
SRC_URI="https://github.com/ahatem/IoskeleyMono/releases/download/${MY_PV}/IoskeleyMono-TTF-Hinted.zip -> ${P}.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"

BDEPEND="app-arch/unzip"

S="${WORKDIR}"

FONT_S="${WORKDIR}/TTF"
FONT_SUFFIX="ttf"
