.PHONY: all build clean

install-govite:
	rm -rf go-vite
	git clone https://github.com/icyphox/go-vite
	cd go-vite && make && cd ..
	mkdir build

build:
	rm -rf build
	mkdir build || true
	./go-vite/vite build

serve:
	./serve.sh

cd:
	rm -rf go-vite
	git clone https://github.com/icyphox/go-vite
	cd go-vite && make && cd ..
	mkdir build || true
	./go-vite/vite build
