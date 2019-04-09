# MIT PhD thesis template
by Max Opgenoord

This template is used to make [this thesis](http://web.mit.edu/mopg/www/papers/Opgenoord-PhD-2018.pdf).

## Usage
Use the provided `Makefile` to compile the text and the separate `Makefile` in the `src/figures` folder to compile the figures.
In case it does not compile, you are likely missing the Minion Pro and Myriad Pro fonts.
You can compile those on your machine using [FontPro](https://github.com/sebschub/FontPro).
It is quite a hassle though, so you can also comment out the Myriad Pro and Minion Pro fonts in `mitthesis.cls` and instead use the Palatino fonts (these are currently commented in `mitthesis.cls`).
Make sure you update the preamble for the figures as well, and update the text in the colophon (if you choose to use it).

## Customization
To customize it for your case, make sure to update your name and title in the following places:
- PDF metadata in `thesis.tex`
- Title page, abstract in `mitthesis.cls` (as well as adding your committee's info, bio info, etc.)
- Title and name on last page of doc in `thesis.tex`
