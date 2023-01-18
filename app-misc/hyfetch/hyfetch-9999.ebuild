# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Neofetch with LGBTQ pride flags."
HOMEPAGE="https://github.com/hykilpikonna/hyfetch"
SRC_URI=""

inherit git-r3
EGIT_REPO_URI="https://github.com/hykilpikonna/hyfetch.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	dev-lang/python
	dev-vcs/git
	dev-python/python-utils
"
#python-setuptools
#python-typing-extensions

RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	chmod +x neofetch
	chmod +x hyfetch/scripts/neowofetch
	/usr/bin/python3 setup.py build
	ls
}

src_install() {
	chmod +x neofetch
	chmod +x hyfetch/scripts/neowofetch
	ls -al
	/usr/bin/python3 setup.py install --root="." --optimize=1
	cd ./usr/bin
	dobin hyfetch
	dobin neowofetch
}




