#!/bin/bash
#
# Carlos Contreras Bolton
# Script para latex CV
# rm *~
# bibtex Proceeding.aux;
# bibtex Revista.aux;
# bibtex Conferencia.aux;
# read -n 1 c
# lualatex CV_en.tex;lualatex CV_en.tex;
# bibtex Proceeding.aux;
# bibtex Revista.aux;
# bibtex Conferencia.aux;
# lualatex CV_en.tex;lualatex CV_en.tex;
# bibtex Proceeding.aux;
# bibtex Revista.aux;
# bibtex Conferencia.aux;
# lualatex CV.tex;lualatex CV.tex;
# bibtex Proceeding.aux;
# bibtex Revista.aux;
# bibtex Conferencia.aux;
# lualatex CV.tex;lualatex CV.tex;
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
lualatex -jobname=pub_en publicaciones.tex;
bibtex Sometido.aux;
bibtex Revista.aux;
bibtex Libro.aux;
bibtex Proceeding.aux;
bibtex Conferencia.aux;
lualatex -jobname=cv_es CV.tex;lualatex -jobname=cv_es CV.tex;
bibtex Sometido.aux;
bibtex Revista.aux;
bibtex Libro.aux;
bibtex Proceeding.aux;
bibtex Conferencia.aux;
lualatex -jobname=cv_es CV.tex;lualatex -jobname=cv_es CV.tex;
lualatex -jobname=pub_es publicaciones.tex;
rm *.log *.aux *.bbl *.out *.blg
