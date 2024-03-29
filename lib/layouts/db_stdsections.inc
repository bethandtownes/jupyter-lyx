# Textclass definition file for docbook.
# Author : José Abílio Oliveira Matos <jamatos@lyx.org>
# Modified by Martin Vermeer <martin.vermeer@hut.fi>

# This file is the counterpart of stdsections.inc
# It is desirable, as far as possible, to have the same look and feel for
# related layouts in latex and docbook.

Format 79
Input stdsections.inc

Style Part
	LatexType             Command
	LatexName             part
	InnerTag              "title"
	CommandDepth          0
End


Style Chapter
	LatexType             Command
	LatexName             chapter
	InnerTag              "title"
	CommandDepth          1
End


Style Section
	LatexType             Command
	LatexName             sect1
	InnerTag              "title"
	CommandDepth          2
End


Style Subsection
	LatexType             Command
	LatexName             sect2
	InnerTag              "title"
	CommandDepth          3
End


Style Subsubsection
	LatexType             Command
	LatexName             sect3
	InnerTag              "title"
	CommandDepth          4
End


Style Paragraph
	LatexType             Command
	LatexName             sect4
	InnerTag              "title"
	CommandDepth          5
End


Style Subparagraph
	LatexType             Command
	LatexName             sect5
	InnerTag              "title"
	CommandDepth          6
End

