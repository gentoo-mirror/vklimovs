# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit autotools

DESCRIPTION="A set of tools to collect and process netflow data"
HOMEPAGE="https://github.com/phaag/nfdump"
SRC_URI="https://github.com/phaag/nfdump/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0/1.6.19"
KEYWORDS="~amd64 ~x86"
IUSE="debug doc jnat ftconv nfpcapd nfprofile nftrack nsel readpcap sflow
	static-libs"
REQUIRED_USE="?? ( jnat nsel )"

COMMON_DEPEND="
	app-arch/bzip2
	sys-libs/zlib
	ftconv? ( net-analyzer/flow-tools )
	nfpcapd? ( net-libs/libpcap )
	nfprofile? ( net-analyzer/rrdtool )
	nftrack? ( net-analyzer/rrdtool )
	readpcap? ( net-libs/libpcap )
"
DEPEND="
	${COMMON_DEPEND}
	sys-devel/flex
	virtual/yacc
	doc? ( app-doc/doxygen[dot] )
"
RDEPEND="
	${COMMON_DEPEND}
	dev-lang/perl
"
DOCS=( AUTHORS ChangeLog README.md )

src_prepare() {
	default

	sed -i -e 's/AM_CFLAGS = -ggdb//' bin/Makefile.am || die

	eautoreconf

	if use doc; then
		doxygen -u doc/Doxyfile.in || die
	fi
}

src_configure() {
	econf \
		$(use ftconv && echo "--enable-ftconv --with-ftpath=/usr") \
		$(use nfprofile && echo --enable-nfprofile) \
		$(use nftrack && echo --enable-nftrack) \
		$(use_enable debug devel) \
		$(use_enable jnat) \
		$(use_enable nfpcapd) \
		$(use_enable nsel) \
		$(use_enable readpcap) \
		$(use_enable sflow) \
		$(use_enable static-libs static)
}

src_install() {
	default

	use doc && dodoc -r doc/html

	find "${ED}" -name '*.la' -delete || die
}