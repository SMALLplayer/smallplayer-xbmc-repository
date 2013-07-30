repository.smallplayer
======================

These are the files needed to run the SMALLplayer XBMC repository. You need an external webserver and the TexturePacker binary in your $PATH. 

TexturePacker can be obtained by building a few things from the XBMC repo, no need to build the whole thing. Here's how:
 - Clone the [official XBMC repo](https://github.com/xbmc/xbmc)
 - Install their dependencies (see docs/README.your-os)
 - Run `./configure`
 - Build libsquish `make -C lib/libsquish`
 - Build TexturePacker `make -C tools/TexturePacker`
 - Copy the tools/TexturePacker/TexturePacker binary you just built somewhere in your path (~/bin usually does the trick)

Once you have TexturePacker, you can proceed to setup the XBMC repo
 - Clone this repo
 - Run the scripts in the scripts/ directory, run update_webroot.sh last
 - Setup a webserver to serve from the web/ directory
 - Add repository.smallplayer.zip as addon-on in XBMC, it is directly in the webroot
 - .. done!
