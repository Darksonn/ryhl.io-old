
all: io-domain/index.html io-domain/fractals.html io-domain/gol-pcb.html io-domain/newton-intro.html io-domain/fractals-360.html io-domain/highlight-fsharp io-domain/highlight-arduino io-domain/style.css io-domain/code/hsltorgb.fs io-domain/code/intro.fsx io-domain/code io-domain/DejaVuSans.ttf io-domain/pubkey.gpg io-domain/img io-domain/android-chrome-192x192.png io-domain/android-chrome-512x512.png io-domain/apple-touch-icon.png io-domain/browserconfig.xml io-domain/favicon-16x16.png io-domain/favicon-32x32.png io-domain/favicon.ico io-domain/manifest.json io-domain/mstile-150x150.png io-domain/safari-pinned-tab.svg io-domain/.well-known/keybase.txt io-domain/backblaze.html io-domain/fallingsand.html io-domain/highlight-x86

publish: all
	git push && ssh ryhlio@sleep cd git\; git pull\; make

io-domain/index.html: pages/index.html
	cp pages/index.html io-domain/index.html
io-domain/backblaze.html: pages/backblaze.html
	cp pages/backblaze.html io-domain/backblaze.html
io-domain/fractals.html: pages/fractals.html
	cp pages/fractals.html io-domain/fractals.html
io-domain/newton-intro.html: pages/newton-intro.html
	cp pages/newton-intro.html io-domain/newton-intro.html
io-domain/fractals-360.html: pages/fractals-360.html
	cp pages/fractals-360.html io-domain/fractals-360.html
io-domain/gol-pcb.html: pages/gol-pcb.html
	cp pages/gol-pcb.html io-domain/gol-pcb.html
io-domain/fallingsand.html: pages/fallingsand.html
	cp pages/fallingsand.html io-domain/fallingsand.html

io-domain/highlight-fsharp: scripts/highlight-fsharp
	cp -r scripts/highlight-fsharp io-domain/highlight-fsharp
io-domain/highlight-arduino: scripts/highlight-arduino
	cp -r scripts/highlight-arduino io-domain/highlight-arduino
io-domain/highlight-x86: scripts/highlight-x86
	cp -r scripts/highlight-x86 io-domain/highlight-x86

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

io-domain/pubkey.gpg: pubkey.gpg
	cp pubkey.gpg io-domain/pubkey.gpg

io-domain/img: img
	mkdir -p io-domain/img
	cp img/* io-domain/img
	touch io-domain/img
io-domain/.well-known/keybase.txt: keybase.txt
	mkdir -p io-domain/.well-known
	cp keybase.txt io-domain/.well-known/keybase.txt

io-domain/android-chrome-192x192.png io-domain/android-chrome-512x512.png io-domain/apple-touch-icon.png io-domain/browserconfig.xml io-domain/favicon-16x16.png io-domain/favicon-32x32.png io-domain/favicon.ico io-domain/manifest.json io-domain/mstile-150x150.png io-domain/safari-pinned-tab.svg: favicon/*
	cp favicon/* io-domain/


clean:
	rm -rf io-domain/*
rebuild: clean all

.PHONY: clean rebuild

# vim macro for putting targets in all
# /:0yt:jmaggjA jkp`a
