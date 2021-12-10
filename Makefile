VERSION     = 0.0.1
NODE_VERSION = node12
BIN_NAME = wscat

dist: bin
	rm -rf dist && mkdir dist

build-linux: dist
	./node_modules/.bin/pkg . -t $(NODE_VERSION)-linux-x64 -o dist/$(BIN_NAME)-$(VERSION)-linux

build-macos: dist
	./node_modules/.bin/pkg . -t $(NODE_VERSION)-macos-x64 -o dist/$(BIN_NAME)-$(VERSION)-macos

build: build-linux build-macos

clean:
	rm -rf dist