# Copyright 2026
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Nerd Fonts: patched developer fonts with extra glyphs/icons"
HOMEPAGE="https://www.nerdfonts.com"
SRC_URI=""

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

BDEPEND="app-arch/unzip"
DEPEND=""
RDEPEND=""

FONTDIR="/usr/share/fonts/nerdfonts"

# Accumulate download URLs for selected fonts
_add_font() {
	local useflag="$1"
	local fontdir="$2"
	local filename="$3"
	if use ${useflag}; then
		SRC_URI+=" https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/${filename}"
		FONTS+=("${fontdir}")
	fi
}

src_unpack() {
	FONTS=()

	_add_font 0xproto "0xProto" "0xProto.zip"
	_add_font 3270 "3270" "3270.zip"
	_add_font adwaitamono "AdwaitaMono" "AdwaitaMono.zip"
	_add_font agave "Agave" "Agave.zip"
	_add_font anonymouspro "AnonymousPro" "AnonymousPro.zip"
	_add_font arimo "Arimo" "Arimo.zip"
	_add_font atkinsonhyperlegiblemono "AtkinsonHyperlegibleMono" "AtkinsonHyperlegibleMono.zip"
	_add_font aurulentsansmono "AurulentSansMono" "AurulentSansMono.zip"
	_add_font bigblueterminal "BigBlueTerminal" "BigBlueTerminal.zip"
	_add_font bitstreamverasansmono "BitstreamVeraSansMono" "BitstreamVeraSansMono.zip"
	_add_font cascadiacode "CascadiaCode" "CascadiaCode.zip"
	_add_font cascadiamono "CascadiaMono" "CascadiaMono.zip"
	_add_font codenewroman "CodeNewRoman" "CodeNewRoman.zip"
	_add_font comicshannsmono "ComicShannsMono" "ComicShannsMono.zip"
	_add_font commitmono "CommitMono" "CommitMono.zip"
	_add_font cousine "Cousine" "Cousine.zip"
	_add_font d2coding "D2Coding" "D2Coding.zip"
	_add_font daddytimemono "DaddyTimeMono" "DaddyTimeMono.zip"
	_add_font dejavusansmono "DejaVuSansMono" "DejaVuSansMono.zip"
	_add_font departuremono "DepartureMono" "DepartureMono.zip"
	_add_font droidsansmono "DroidSansMono" "DroidSansMono.zip"
	_add_font envycoder "EnvyCodeR" "EnvyCodeR.zip"
	_add_font fantasquesansmono "FantasqueSansMono" "FantasqueSansMono.zip"
	_add_font firacode "FiraCode" "FiraCode.zip"
	_add_font firamono "FiraMono" "FiraMono.zip"
	_add_font geistmono "GeistMono" "GeistMono.zip"
	_add_font gomono "GoMono" "GoMono.zip"
	_add_font gohu "GohuFont" "GohuFont.zip"
	_add_font hack "Hack" "Hack.zip"
	_add_font hasklig "Hasklig" "Hasklig.zip"
	_add_font heavydata "HeavyData" "HeavyData.zip"
	_add_font hermit "Hermit" "Hermit.zip"
	_add_font iawriter "iAWriter" "iAWriter.zip"
	_add_font ibmplexmono "IBMplexMono" "IBMplexMono.zip"
	_add_font inconsolata "Inconsolata" "Inconsolata.zip"
	_add_font inconsolatago "InconsolataGo" "InconsolataGo.zip"
	_add_font inconsolatalgc "InconsolataLGC" "InconsolataLGC.zip"
	_add_font intelonemono "IntelOneMono" "IntelOneMono.zip"
	_add_font iosevka "Iosevka" "Iosevka.zip"
	_add_font iosevkaterm "IosevkaTerm" "IosevkaTerm.zip"
	_add_font iosevkatermslab "IosevkaTermSlab" "IosevkaTermSlab.zip"
	_add_font jetbrainsmono "JetBrainsMono" "JetBrainsMono.zip"
	_add_font lekton "Lekton" "Lekton.zip"
	_add_font liberationmono "LiberationMono" "LiberationMono.zip"
	_add_font lilex "Lilex" "Lilex.zip"
	_add_font martianmono "MartianMono" "MartianMono.zip"
	_add_font meslo "Meslo" "Meslo.zip"
	_add_font monaspace "MonoSpace" "MonoSpace.zip"
	_add_font monofur "MonoFur" "MonoFur.zip"
	_add_font monoid "Monoid" "Monoid.zip"
	_add_font mononoki "Mononoki" "Mononoki.zip"
	_add_font mplus "MPlus" "MPlus.zip"
	_add_font nerdfontssymbolsonly "NerdFontsSymbolsOnly" "NerdFontsSymbolsOnly.zip"
	_add_font noto "Noto" "Noto.zip"
	_add_font opendyslexic "OpenDyslexic" "OpenDyslexic.zip"
	_add_font overpass "Overpass" "Overpass.zip"
	_add_font profont "ProFont" "ProFont.zip"
	_add_font proggyclean "ProggyClean" "ProggyClean.zip"
	_add_font recursive "RecursiveMono" "RecursiveMono.zip"
	_add_font robotomono "RobotoMono" "RobotoMono.zip"
	_add_font sharetechmono "ShareTechMono" "ShareTechMono.zip"
	_add_font sourcecodepro "SourceCodePro" "SourceCodePro.zip"
	_add_font spacemono "SpaceMono" "SpaceMono.zip"
	_add_font terminus "Terminus" "Terminus.zip"
	_add_font tinos "Tinos" "Tinos.zip"
	_add_font ubuntu "Ubuntu" "Ubuntu.zip"
	_add_font ubuntumono "UbuntuMono" "UbuntuMono.zip"
	_add_font ubuntusans "UbuntuSans" "UbuntuSans.zip"
	_add_font victormono "VictorMono" "VictorMono.zip"
	_add_font zedmono "ZedMono" "ZedMono.zip"

	default
}

src_install() {
	insinto "${FONTDIR}"

	for font in "${FONTS[@]}"; do
		doins -r "${WORKDIR}/${font}"/*.ttf || die
	done
}
