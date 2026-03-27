.PHONY: serve build clean

serve:
	hugo server -D --navigateToChanged

build:
	git submodule update --init --recursive && hugo --gc --minify

clean:
	rm -rf public resources
