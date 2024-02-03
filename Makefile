.PHONY: all build install clean uninstall wipe
all:
	mkdir -p build
	cd build && cmake ..

build: all
	cd build && make

install: build all
	cd build && sudo make install

# Cleans up ./
clean:
	rm -rf build

# Uninstalls what was installed by make install
uninstall:
	if [ -e "./build/install_manifest.txt" ]; then \
		sudo xargs rm -f < ./build/install_manifest.txt; \
	fi

# Totally removes all artifacts
wipe: uninstall clean