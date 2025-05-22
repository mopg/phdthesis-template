# MIT PhD thesis template

> [!WARNING]  
> This template no longer meets the latest [MIT thesis requirements](https://libraries.mit.edu/distinctive-collections/thesis-specs/). Pull requests to update the template are welcome.

This template is used to make [this thesis](https://dspace.mit.edu/handle/1721.1/120380).
It has also been as the basis for the book [Engineering Design Optimization](https://mdobook.github.io) by Joaquim R. R. A. Martins and Andrew Ning.
If you're looking for an example of how to adapt this template for your own university, check out the [University of Washington (UW) PhD thesis template](https://github.com/mopg/uw-phd-thesis) which is based on this template.

## Usage

Use the provided [`Makefile`](src/Makefile) to compile the text and the separate figures [`Makefile`](src/figures/Makefile) to compile the figures.

## Fonts

If you want to use Minion Pro and Myriad Pro fonts in your thesis (which is what I used),
you'll need to compile those on your machine using [FontPro](https://github.com/sebschub/FontPro)
and then uncomment lines 186-187 in [`mitthesis.cls`](src/mitthesis)
and lines 11-12 in [`preamble_figures.tex`](src/figures/preamble_figures.tex).
Lastly, you should also update the text in the colophon (if you choose to use it).

## Customization

To customize it for your case, make sure to update your name and title in the following places:

- PDF metadata in [`thesis.tex`](src/thesis.tex)
- Title page, abstract in [`mitthesis.cls`](src/mitthesis.cls) (as well as adding your committee's info, bio info, etc.)
- Title and name on last page of doc in [`thesis.tex`](src/thesis.tex)
