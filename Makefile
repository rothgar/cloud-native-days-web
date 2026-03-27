.PHONY: serve build clean

serve:
	hugo server -D --navigateToChanged

build:
	git submodule update --init --recursive && rm -rf themes/blowfish/exampleSite && hugo --gc --minify

clean:
	rm -rf public resources
