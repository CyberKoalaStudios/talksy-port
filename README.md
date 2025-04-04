# talksy-port

![](https://avatars.githubusercontent.com/u/169930036?s=200&v=4)

Talksy Desktop FreeBSD port


![https://talksy.ru/landing](https://github.com/CyberKoalaStudios/talksy-port/releases/download/0.0.31/talksy_kde_Screenshot_20250326_023921.png)

## Installation

Go to [Releases](https://github.com/CyberKoalaStudios/talksy-port/releases/) and get latest **talksy-X.X.XX.pkg**

To install simply download pkg and run:

```sh
# pkg add talksy-X.X.XX.pkg
```

Where _X.X.XX_ - port version


## Building from SRC (optional)
To build yourself:
```sh
make clean && make makesum && make stage

make install
make package # creates /work/pkg/talksy-X.X.X.pkg

# pkg add ./work/pkg/talksy-X.X.X.pkg # to install
# pkg info talksy # To viev package info
```

Check plist: `make check-plist`

# Submitting to Ports

```
# cp /talksy-port/distinfo /usr/ports/net-im/talksy
# cp /talksy-port/LICENSE /usr/ports/net-im/talksy
# cp /talksy-port/Makefile /usr/ports/net-im/talksy
# cp /talksy-port/pkg-descr /usr/ports/net-im/talksy
# cp /talksy-port/pkg-list /usr/ports/net-im/talksy
# cp /talksy-port/pkg-plist /usr/ports/net-im/talksy

% git add .
% git diff --staged
% git commit
% git format-patch origin/main

% git format-patch origin/main --stdout > talksy.diff

``
https://docs.freebsd.org/en/books/porters-handbook/quick-porting/