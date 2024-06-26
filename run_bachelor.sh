find . \
          \( -iname '*.out' -o -iname '*.toc' -o  -iname '*.log' -o -iname '*.aux' -o -iname '*.dvi' -o -iname '*.lol' -o \
          -iname '*.lof' -o -iname '*.run.xml' -o -iname '*.fdb_latexmk' -o -iname '*.fls' -o -iname '*.bbl' -o \
          -iname '*.bcf' -o -iname '*.blg' -o -iname '*.lot' \) \
          -exec rm -R {} +
docker run \
          --rm -t \
          --user="$(id -u):$(id -g)" \
          --net=none \
          -v "$(pwd):/tmp" \
          leplusorg/latex:1.0 \
          latexmk \
            -outdir=/tmp \
            -pdf /tmp/Bachelorarbeit.tex
docker run \
          --rm -t \
          --user="$(id -u):$(id -g)" \
          --net=none \
          -v "$(pwd):/tmp" \
          leplusorg/latex:1.0 \
          latexmk \
            -outdir=/tmp \
            -pdf /tmp/Bachelorarbeit.tex
find . \
          \( -iname '*.out' -o -iname '*.toc' -o  -iname '*.log' -o -iname '*.aux' -o -iname '*.dvi' -o -iname '*.lol' -o \
          -iname '*.lof' -o -iname '*.run.xml' -o -iname '*.fdb_latexmk' -o -iname '*.fls' -o -iname '*.bbl' -o \
          -iname '*.bcf' -o -iname '*.blg' -o -iname '*.lot' \) \
          -exec rm -R {} +