# talksy-port

Talksy Desktop FreeBSD port

To build yourself:
```sh
make clean && make makesum && make stage

make install
make package # creates /work/pkg/talksy-X.X.X.pkg

pkg add /work/pkg/talksy-X.X.X.pkg # to install
pkg info talksy # To viev package info
```

Check plist: `make check-plist`
