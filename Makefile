PORTNAME=	talksy
PORTVERSION=	0.0.31
CATEGORIES=	net-im

MAINTAINER=	contact@cyberkoalastudios.com
COMMENT=	Video calling app
WWW=		https://talksy.ru/landing

USE_GITUB=	yes
GH_ACCOUNT=	CyberKoalaStudios
GH_PROJECT=	talksy-port
GH_TAGNAME=	6dbb17b

# WRKSRC=		${WRKDIR}/${GH_PROJECT}-${DISTVERSION}
WRKSRC=	${WRKDIR}/${PORTNAME}-${DISTVERSION}

#MASTER_SITES=	GH/${GH_ACCOUNT}/${GH_PROJECT}/${GH_TAGNAME} \
		LOCAL/cyberkoala/${PORTNAME}/

#DISTNAME=	talksy-${PORTVERSION}
#EXTRACT_SUFX=	.tar.gz
#DISTFILES=	${DISTNAME}${EXTRACT_SUFX}


LICENSE=	AGPLv3

USES=		cmake compiler:c++17-lang gl pkgconfig xorg
USES+=		qt:6
USE_GL=		glu
USE_QT=		base svg webengine webview


USE_XORG=	x11 xcb xext xorgproto

#LIB_DEPENDS=	libavcodec.so:multimedia/ffmpeg \
		libsnappy.so:archivers/snappy \
		libre2.so:devel/re2 \
		libopus.so:audio/opus \
		libwebp.so:graphics/webp \
		libvpx.so:multimedia/libvpx

CMAKE_ARGS=	-DCMAKE_INSTALL_PREFIX=${PREFIX} \
			-DCMAKE_BUILD_TYPE=Release \
			-DQT_VERSION_MAJOR=6 
		 
.include <bsd.port.mk>
