# sageLatex

This is a guide of how to make this to work on ubuntu

To install sage, install the package with

```
sudo -E apt-add-repository -y ppa:aims/sagemath
sudo -E apt-get update
sudo -E apt-get install sagemath-upstream-binary
```

Then after this you will be able to use the ``sage`` command from the terminal.

Now we need to make the sagetex.sty file

There are two folders. One names sage -- we will make the sagetex.sty here and latex -- where we are going to write our code.

**You can download and compile the sagetex.sty yourself from the link [here](https://www.ctan.org/tex-archive/macros/latex/contrib/sagetex/) or just use those that are in the git**

In the sage folder, run these commands

```
f you can't or don't want to install SageTeX by using Sage, you can use
this CTAN package. If sagetex.py and sagetex.sty haven't been extracted
from the .dtx file, you'll need to do:

  0. Run `latex sagetexpackage.ins'

If a PDF file of the documentation wasn't included with this
distribution of SageTeX, you will need to build the documentation
yourself. To do that:

  1. Run `latex sagetexpackage.dtx'
  2. Run `sage sagetexpackage.sage'
  3. Run the indexing commands that the .ins file told you about.
  4. Run `latex sagetexpackage.dtx' again.
```

then copy the sagetex.sty and copy it to your latex folder.

Now in your latex folder we should have

```
example.tex
sagetex.sty
```

Run these commands in order

```
latex example.tex <- compile the tex
sage example.sage <- 
latex example.tex <- run again, after you have run the .sage file
pdflatex example.tex <- to create the pdf file
evince example.pdf <- to view the pdf
```

## Clean folder structure


```
sageLatex
|--latex/
	|--example.tex
	|--sagetex.sty
|--sage/
	|--README
	|--example.pdf
	|--example.tex
	|--py_and_sty_dtx.dtx
	|--remote_sagetex_dtx.dtx
	|--sagetexpackage_dtx.dtx
	|--sagetexpackage_ins.ins
	|--sagetexpackage_pdf.pdf
	|--scripts_dtx.dtx
```