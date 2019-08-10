/**
 * \file OutputParams.cpp
 * This file is part of LyX, the document processor.
 * Licence details can be found in the file COPYING.
 *
 *  \author Angus Leeming
 *
 * Full author contact details are available in file CREDITS.
 */

#include <config.h>

#include "OutputParams.h"
#include "Exporter.h"
#include "Encoding.h"


namespace lyx {


OutputParams::OutputParams(Encoding const * enc)
	: flavor(LATEX), math_flavor(NotApplicable), nice(false), is_child(false),
	  moving_arg(false), intitle(false), inbranch(false), inulemcmd(0),
	  local_font(0),master_language(0), encoding(enc), free_spacing(false),
	  use_babel(false), use_polyglossia(false), use_CJK(false),
	  use_indices(false), use_japanese(false), linelen(0), depth(0),
	  exportdata(new ExportData), postpone_fragile_stuff(false), inDisplayMath(false),
	  wasDisplayMath(false), inComment(false), openbtUnit(false), only_childbibs(false),
	  inTableCell(NO), inFloat(NONFLOAT),
	  inIndexEntry(false), inIPA(false), inDeletedInset(0),
	  changeOfDeletedInset(Change::UNCHANGED),
	  par_begin(0), par_end(0), lastid(-1), lastpos(0), isLastPar(false),
	  dryrun(false), silent(false), pass_thru(false),
	  html_disable_captions(false), html_in_par(false),
	  html_make_pars(true), for_toc(false), for_tooltip(false),
	  for_search(false), for_preview(false), includeall(false)
{
	// Note: in PreviewLoader::Impl::dumpPreamble
	// OutputParams runparams(0);
	if (enc && enc->package() == Encoding::japanese)
		use_japanese = true;
	if (enc && enc->package() == Encoding::CJK)
		use_CJK = true;
}


OutputParams::~OutputParams()
{}


bool OutputParams::isLaTeX() const
{
	return flavor == LATEX || flavor == LUATEX || flavor == DVILUATEX
		|| flavor == PDFLATEX || flavor == XETEX;
}


bool OutputParams::isFullUnicode() const
{
	return flavor == LUATEX || flavor == DVILUATEX || flavor == XETEX;
}


bool OutputParams::useBidiPackage() const
{
	return use_polyglossia && flavor == XETEX;
}

} // namespace lyx
