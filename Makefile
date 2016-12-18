
all: io-domain/index.html io-domain/fractals.html io-domain/gol-pcb.html io-domain/newton-intro.html io-domain/fractals-360.html io-domain/highlight-fsharp io-domain/highlight-arduino io-domain/style.css io-domain/code/hsltorgb.fs io-domain/code/intro.fsx io-domain/code io-domain/DejaVuSans.ttf io-domain/CNAME io-domain/pubkey.gpg io-domain/README.md io-domain/img io-domain/android-chrome-192x192.png io-domain/android-chrome-512x512.png io-domain/apple-touch-icon.png io-domain/browserconfig.xml io-domain/favicon-16x16.png io-domain/favicon-32x32.png io-domain/favicon.ico io-domain/manifest.json io-domain/mstile-150x150.png io-domain/safari-pinned-tab.svg

publish: all
	HASH=`git rev-parse HEAD` && [[ -z $$(git status -s) ]] && cd io-domain && git commit -am "update to commit $$HASH" && git push

io-domain/index.html: pages/index.html
	cp pages/index.html io-domain/index.html
io-domain/fractals.html: pages/fractals.html
	cp pages/fractals.html io-domain/fractals.html
io-domain/newton-intro.html: pages/newton-intro.html
	cp pages/newton-intro.html io-domain/newton-intro.html
io-domain/fractals-360.html: pages/fractals-360.html
	cp pages/fractals-360.html io-domain/fractals-360.html
io-domain/gol-pcb.html: pages/gol-pcb.html
	cp pages/gol-pcb.html io-domain/gol-pcb.html

io-domain/highlight-fsharp: scripts/highlight-fsharp
	cp -r scripts/highlight-fsharp io-domain/highlight-fsharp
io-domain/highlight-arduino: scripts/highlight-arduino
	cp -r scripts/highlight-arduino io-domain/highlight-arduino

io-domain/style.css: style.css
	cp style.css io-domain/style.css

io-domain/code/hsltorgb.fs: fsharp/hsltorgb.fs io-domain/code
	cp fsharp/hsltorgb.fs io-domain/code/hsltorgb.fs
io-domain/code/intro.fsx: fsharp/intro.fsx io-domain/code
	cp fsharp/intro.fsx io-domain/code/intro.fsx
io-domain/code:
	mkdir -p io-domain/code

io-domain/DejaVuSans.ttf: fonts/DejaVuSans.ttf
	cp fonts/DejaVuSans.ttf io-domain/DejaVuSans.ttf

io-domain/CNAME: CNAME
	cp CNAME io-domain/CNAME
io-domain/pubkey.gpg: pubkey.gpg
	cp pubkey.gpg io-domain/pubkey.gpg
io-domain/README.md: io-README.md
	cp io-README.md io-domain/README.md

io-domain/img: img
	cp -r img io-domain/img

io-domain/android-chrome-192x192.png io-domain/android-chrome-512x512.png io-domain/apple-touch-icon.png io-domain/browserconfig.xml io-domain/favicon-16x16.png io-domain/favicon-32x32.png io-domain/favicon.ico io-domain/manifest.json io-domain/mstile-150x150.png io-domain/safari-pinned-tab.svg: favicon/*
	cp favicon/* io-domain/


clean:
	rm -rf io-domain/*
rebuild: clean all

.PHONY: clean rebuild

# vim macro for putting targets in all
# /:0yt:jmaggjA jkp`a
