#!/usr/bin/python3
# -*- coding: utf-8 -*-

# file svg2pdftex.py
# This file is part of LyX, the document processor.
# Licence details can be found in the file COPYING.

# author Daniel Gloger
# author Martin Vermeer
# author Jürgen Spitzmüller

# Full author contact details are available in file CREDITS

# This script converts an SVG image to two files that can be processed
# with pdflatex into high quality PDF. It requires Inkscape.

# Usage:
#   python svg2pdftex.py [inkscape_command] inputfile.svg outputfile.pdf_tex
# This command generates
#   1. outputfile.pdf     -- the converted PDF file (text from SVG stripped)
#   2. outputfile.pdf_tex -- a TeX file that can be included in your
#                             LaTeX document using '\input{outputfile.pdf_text}'
#
# Note:
#   Do not use this command as
#     python svg2pdftex.py [inkscape_command] inputfile.svg outputfile.pdf
#   the real PDF file would be overwritten by a TeX file named outputfile.pdf.
#

from __future__ import print_function

import os, sys, re, subprocess

def runCommand(cmd):
    ''' Utility function:
        run a command, quit if fails
    '''
    res = subprocess.check_call(cmd)
    if res != 0:
        print("Command '%s' fails (exit code: %i)." % (res.cmd, res.returncode))
        sys.exit(1)

InkscapeCmd = "inkscape"
InputFile = ""
OutputFile = ""

# We expect two or three args: the names of the input and output files
# and optionally the inkscape command (with path if needed).
args = len(sys.argv)
if args == 3:
    # Two args: input and output file only
    InputFile, OutputFile = sys.argv[1:]
elif args == 4:
    # Three args: first arg is inkscape command
    InkscapeCmd, InputFile, OutputFile = sys.argv[1:]
else:
    # Invalid number of args. Exit with error.
    sys.exit(1)

# Fail silently if the file doesn't exist
if not os.path.isfile(InputFile):
    sys.exit(0)

# Strip the extension from ${OutputFile}
OutBase = os.path.splitext(OutputFile)[0]

# Inkscape (as of 0.48) can output SVG images as a PDF file without text, ${OutBase}.pdf,
# while outsourcing the text to a LaTeX file ${OutBase}.pdf_tex which includes and overlays
# the PDF image and can be \input to LaTeX files. We rename the latter file to ${OutputFile}
# (although this is probably the name it already has).
runCommand([r'%s' % InkscapeCmd, '--file=%s' % InputFile, '--export-pdf=%s.pdf' % OutBase, '--export-latex'])

os.rename('%s.pdf_tex' % OutBase, OutputFile)

