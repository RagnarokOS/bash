# Global Makefile for bash
# $Ragnarok: Makefile,v 1.3 2024/03/19 16:40:57 lecorbeau Exp $

MAKE	= make -C
PKG	= bash
VERSION	= 5.2.15

DEBIAN	= changelog control rules

src:
	/usr/bin/apt-get source ${PKG}

deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	rm ${PKG}-${VERSION}/debian/skel.profile
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b
