# Copyright 2026
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Nerd Fonts: patched developer fonts with extra glyphs/icons"
HOMEPAGE="https://www.nerdfonts.com"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~x86"

IUSE="
	0xproto 3270 adwaitamono agave anonymouspro arimo atkinsonhyperlegiblemono
	aurulentsansmono bigblueterminal bitstreamverasansmono cascadiacode
	cascadiamono codenewroman comicshannsmono commitmono cousine d2coding
	daddytimemono dejavusansmono departuremono droidsansmono envycoder
	fantasquesansmono firacode firamono geistmono gomono gohu hack hasklig
	heavydata hermit iawriter ibmplexmono inconsolata inconsolatago
	inconsolatalgc intelonemono iosevka iosevkaterm iosevkatermslab
	jetbrainsmono lekton liberationmono lilex martianmono meslo monaspace
	monofur monoid mononoki mplus nerdfontssymbolsonly noto opendyslexic
	overpass profont proggyclean recursive robotomono sharetechmono
	sourcecodepro spacemono terminus tinos ubuntu ubuntumono ubuntusans
	victormono zedmono
"

SRC_URI="
	0xproto? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/0xProto.zip )
	3270? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/3270.zip )
	adwaitamono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/AdwaitaMono.zip )
	agave? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/Agave.zip )
	anonymouspro? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/AnonymousPro.zip )
	arimo? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/Arimo.zip )
	atkinsonhyperlegiblemono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/AtkinsonHyperlegibleMono.zip )
	aurulentsansmono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/AurulentSansMono.zip )
	bigblueterminal? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/BigBlueTerminal.zip )
	bitstreamverasansmono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/BitstreamVeraSansMono.zip )
	cascadiacode? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/CascadiaCode.zip )
	cascadiamono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/CascadiaMono.zip )
	codenewroman? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/CodeNewRoman.zip )
	comicshannsmono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/ComicShannsMono.zip )
	commitmono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/CommitMono.zip )
	cousine? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/Cousine.zip )
	d2coding? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/D2Coding.zip )
	daddytimemono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/DaddyTimeMono.zip )
	dejavusansmono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/DejaVuSansMono.zip )
	departuremono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/DepartureMono.zip )
	droidsansmono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/DroidSansMono.zip )
	envycoder? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/EnvyCodeR.zip )
	fantasquesansmono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/FantasqueSansMono.zip )
	firacode? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/FiraCode.zip )
	firamono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/FiraMono.zip )
	geistmono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/GeistMono.zip )
	hack? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/Hack.zip )
	hasklig? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/Hasklig.zip )
	hermit? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/Hermit.zip )
	ibmplexmono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/IBMplexMono.zip )
	inconsolata? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/Inconsolata.zip )
	iosevka? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/Iosevka.zip )
	iosevkaterm? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/IosevkaTerm.zip )
	iosevkatermslab? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/IosevkaTermSlab.zip )
	jetbrainsmono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/JetBrainsMono.zip )
	lekton? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/Lekton.zip )
	liberationmono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/LiberationMono.zip )
	lilex? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/Lilex.zip )
	martianmono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/MartianMono.zip )
	meslo? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/Meslo.zip )
	monofur? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/MonoFur.zip )
	monoid? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/Monoid.zip )
	mononoki? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/Mononoki.zip )
	nerdfontssymbolsonly? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/NerdFontsSymbolsOnly.zip )
	noto? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/Noto.zip )
	opendyslexic? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/OpenDyslexic.zip )
	profont? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/ProFont.zip )
	proggyclean? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/ProggyClean.zip )
	robotomono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/RobotoMono.zip )
	sharetechmono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/ShareTechMono.zip )
	sourcecodepro? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/SourceCodePro.zip )
	spacemono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/SpaceMono.zip )
	terminus? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/Terminus.zip )
	ubuntu? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/Ubuntu.zip )
	ubuntumono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/UbuntuMono.zip )
	ubuntusans? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/UbuntuSans.zip )
	victormono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/VictorMono.zip )
	zedmono? ( https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/ZedMono.zip )
"

BDEPEND="app-arch/unzip"

FONTDIR="/usr/share/fonts/nerdfonts"

src_unpack() {
	default
}

src_install() {
	insinto "${FONTDIR}"
	find "${WORKDIR}" -type f -name '*.ttf' -exec doins {} + || die
}
