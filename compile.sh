#!/bin/bash
#
# Carlos Contreras Bolton
# Script para latex CV
rm *~
bibtex Sometido.aux;
bibtex Revista.aux;
bibtex Libro.aux;
bibtex Proceeding.aux;
bibtex Conferencia.aux;
read -n 1 c
lualatex -jobname=cv_en CV.tex;lualatex -jobname=cv_en CV.tex;
bibtex Sometido.aux;
bibtex Revista.aux;
bibtex Libro.aux;
bibtex Proceeding.aux;
bibtex Conferencia.aux;
lualatex -jobname=cv_en CV.tex;lualatex -jobname=cv_en CV.tex;
lualatex -jobname=shortCV_en CV.tex;lualatex -jobname=shortCV_en CV.tex;
lualatex -jobname=pub_en publicaciones.tex;lualatex -jobname=pub_en publicaciones.tex;
bibtex Sometido.aux;
bibtex Revista.aux;
bibtex Libro.aux;
bibtex Proceeding.aux;
bibtex Conferencia.aux;
lualatex -jobname=tesis_en tesis.tex;lualatex -jobname=tesis_en tesis.tex;
lualatex -jobname=cv_es CV.tex;lualatex -jobname=cv_es CV.tex;
bibtex Sometido.aux;
bibtex Revista.aux;
bibtex Libro.aux;
bibtex Proceeding.aux;
bibtex Conferencia.aux;
bibtex Pregrado.aux;
bibtex Master.aux;
bibtex Doctorado.aux;
lualatex -jobname=cv_es CV.tex;lualatex -jobname=cv_es CV.tex;
lualatex -jobname=pub_es publicaciones.tex;lualatex -jobname=pub_es publicaciones.tex;
lualatex -jobname=tesis_en tesis.tex;lualatex -jobname=tesis_en tesis.tex;
lualatex -jobname=tesis_es tesis.tex;lualatex -jobname=tesis_es tesis.tex;
rm *.log *.aux *.bbl *.out *.blg
