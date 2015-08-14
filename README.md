itu-thesis
==========

An unofficial LaTeX document class for ITU theses. This is a work in progress -- please
send suggestions and bug reports should you be so bold as to use it!

This is really only relevant if you plan on writing something long enough to
have chapters.

Features
--------

 * Fancy title page with (now-monochromatic, no longer colorful) ITU logo
 * Tasteful use of sans-serif to match general aesthetic of ITU
 * Bilingual - ITU logo + headers and title page take the language selected in babel (English or Danish).

TODO (that I plan to do)
------------------------
 * Make dependencies on non-free fonts optional
 * Further prettification
 * Show all the needed info on the title page

TODO (for someone else)
-----------------------
 * Make it work easily in LyX

Non-free fonts (Luxi Mono)
--------------------------
By default, the document class relies on the Luxi Mono font for typewriter text (such as that produced by `\texttt`, `verbatim` and friends). Luxi Mono is used because it's a bit narrower than the default fonts, because it looks nice, and because it has bold and italic variants. However, your TeX system probably does not come with it. You can get it with the `getnonfreefonts-sys` script.

The commands will look something like this:
```
$ wget http://tug.org/fonts/getnonfreefonts/install-getnonfreefonts
$ chmod u+x install-getnonfreefonts
$ sudo ./install-getnonfreefonts
```
If your Texlive installation is in your home directory, please omit the `sudo`. Then, use
```
sudo getnonfreefonts-sys luximono
```
to retrieve the `luximono` font.

Please check the above instructions against the documentation for your TeX distribution. In particular, they have only been tested on GNU/Linux and Mac OS X - Windows users running MikTeX may have an easier graphical utility available.

XeTeX
-----
This package now has preliminary support for XeLaTeX. In particular, it correctly determines whether it should load Babel or Polyglossia, and it uses TrueType or Opentype versions of fonts if they are available and XeTeX is being used.

Instructions
------------

Use ````\thetitlepage```` to create a fancy title page. It relies on the following
commands having been run in the preamble:

    \settitle{TITLE HERE}
    \setauthor{AUTHOR}
    \setsupervisor{SUPERVISOR}
    \setextrasupervisor{OPTIONAL SECOND SUPERVISOR}
    \setdate{HAND-IN DATE}

