# HAW Hof Bachelor/Practical Thesis

This should help you to match the formal requirements for a Bachelor thesis at [Hof University](https://www.hof-university.de/fileadmin/user_upload/studienbuero/download/Abschlussarbeit/Bachelorarbeit-Aufbau.pdf "Formal Requirements").

## How to use

### Adjustments

The `Bachelorarbeit.tex` and `Praxisarbeit.tex` are the root source files that will be compiled. It `\input`s all other files. The `ba` directory holds content specific to the `Bachelorarbeit.tex` file and the `pa` directory holds content exclusive to the `Praxisarbeit.tex`. shared content is found in the root direcory, `img` directory or the `listings` directory. Feel free to adjust this structure to your needs. 

First the `header.tex` file is included (in both `Bachelorarbeit.tex` and `Praxisarbeit.tex`). It declares which packages to use. Then `Bachelorarbeit.tex` `\input`s `ba/vars.tex` and `Praxisarbeit.tex` `\input`s `pa/vars.tex`. The `vars.tex` files include Document specific variables like your name or type of document. These should be replaced.

`meta.tex` sets variables like author and title (sourced from `vars.tex`), print's the table of contents, list of figures, list of used abbreviations, list of listings and list of tables.

Next `ba/intro.tex`, `ba/content.tex` and `ba/fin.tex` are included in `Bachelorarbeit.tex`. `ba/content.tex` is where the main content of the thesis goes.
The same is true for the `pa/*` files and `Praxisarbeit.tex`.

`appendix.tex` and `postmeta.tex` are included last. Contents of `appendix.tex` should be clear, `postmeta.tex` is used for content after the appendix, such as the bibliography list.

The `src.bib` contains the definitions of your bibliographic references.
The `abbrev.tex` contains the abbreviations you want to use.

### Compilation

Run `run_praxis.sh` or `run_bachelor.sh` or `run_quick <Praxisarbeit/Bachelorarbeit.tex>`to compile your documents.
Side Note: The script uses a Docker image to compile it automatically.
