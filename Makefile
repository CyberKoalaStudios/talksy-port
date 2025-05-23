PORTNAME=	talksy
PORTVERSION=	0.0.32
CATEGORIES=	net-im
MASTER_SITES=	GH

MAINTAINER=	contact@cyberkoalastudios.com
COMMENT=	Video calling app
WWW=		https://talksy.ru/landing

LICENSE=	AGPLv3

USES=		cmake compiler:c++17-lang gl pkgconfig xorg
USES+=		qt:6
USE_GL=		glu
USE_QT=		base svg webengine webview
USE_XORG=	x11 xcb xext xorgproto
USE_GITUB=	yes

GH_ACCOUNT=	CyberKoalaStudios
GH_PROJECT=	talksy-port
GH_TAGNAME=	71c2256

WRKSRC=	${WRKDIR}/${PORTNAME}-${DISTVERSION}

CMAKE_ARGS=	-DCMAKE_INSTALL_PREFIX=${PREFIX} \
			-DCMAKE_BUILD_TYPE=Release \
			-DQT_VERSION_MAJOR=6
.include <bsd.port.mk>
