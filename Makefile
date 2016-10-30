
all: io-domain/index.html io-domain/fractals.html io-domain/newton-intro.html io-domain/highlight-fsharp io-domain/style.css io-domain/code/hsltorgb.fs io-domain/code/intro.fsx io-domain/CNAME io-domain/pubkey.gpg io-domain/README.md io-domain/img io-domain/android-chrome-192x192.png io-domain/android-chrome-512x512.png io-domain/apple-touch-icon.png io-domain/browserconfig.xml io-domain/favicon-16x16.png io-domain/favicon-32x32.png io-domain/favicon.ico io-domain/manifest.json io-domain/mstile-150x150.png io-domain/safari-pinned-tab.svg

publish: all
	HASH=`git rev-parse HEAD` && cd io-domain && git commit -am "update to commit $$HASH" && git push

io-domain/index.html: pages/index.html
	cp pages/index.html io-domain/index.html
io-domain/fractals.html: pages/fractals.html
	cp pages/fractals.html io-domain/fractals.html
io-domain/newton-intro.html: pages/newton-intro.html
	cp pages/newton-intro.html io-domain/newton-intro.html

io-domain/highlight-fsharp: scripts/highlight-fsharp
	cp -r scripts/highlight-fsharp io-domain/highlight-fsharp

io-domain/style.css: style.css
	cp style.css io-domain/style.css

io-domain/code/hsltorgb.fs: fsharp/hsltorgb.fs io-domain/code
	cp fsharp/hsltorgb.fs io-domain/code/hsltorgb.fs
io-domain/code/intro.fsx: fsharp/intro.fsx io-domain/code
	cp fsharp/intro.fsx io-domain/code/intro.fsx
io-domain/code:
	mkdir -p io-domain/code

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


# /:0yt:jmaggjA jkp`a
