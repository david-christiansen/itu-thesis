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

Instructions
------------

Use ````\thetitlepage```` to create a fancy title page. It relies on the following
commands having been run in the preamble:

    \settitle{TITLE HERE}
    \setauthor{AUTHOR}
    \setsupervisor{SUPERVISOR}
    \setextrasupervisor{OPTIONAL SECOND SUPERVISOR}
    \setdate{HAND-IN DATE}

