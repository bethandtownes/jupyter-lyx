// -*- C++ -*-
/**
 * \file InsetMathGrid.h
 * This file is part of LyX, the document processor.
 * Licence details can be found in the file COPYING.
 *
 * \author André Pönitz
 *
 * Full author contact details are available in file CREDITS.
 */

#ifndef MATH_GRID_H
#define MATH_GRID_H

#include "InsetMathNest.h"
#include "Length.h"

#include <map>

namespace lyx {

class BufferParams;
class BufferView;

/** Gridded math inset base class.
 *  This is the base to all grid-like editable math objects
 */
class InsetMathGrid : public InsetMathNest {
public:

	enum Multicolumn {
		/// A normal cell
		CELL_NORMAL = 0,
		/// A multicolumn cell. The number of columns is <tt>1 + number
		/// of CELL_PART_OF_MULTICOLUMN cells</tt> that follow directly
		CELL_BEGIN_OF_MULTICOLUMN = 1,
		/// This is a dummy cell (part of a multicolumn cell)
		CELL_PART_OF_MULTICOLUMN = 2
	};

	/// additional per-cell information
	class CellInfo {
	public:
		///
		CellInfo();
		/// multicolumn flag
		Multicolumn multi;
		/// special multi colums alignment
		docstring align;
	};

	/// additional per-row information
	class RowInfo {
	public:
		///
		RowInfo();
		///
		int skipPixels(MetricsInfo const & mi) const;
		/// cached descent
		mutable int descent;
		/// cached ascent
		mutable int ascent;
		/// cached offset for each bufferview
		mutable std::map<BufferView const *, int> offset;
		/// how many hlines above this row?
		unsigned int lines;
		/// parameter to the line break
		Length crskip;
		/// extra distance between lines
		int skip;
		/// Is a page break allowed after this row?
		bool allow_newpage;
	};

	// additional per-row information
	class ColInfo {
	public:
		///
		ColInfo();
		/// currently possible: 'l', 'c', 'r'
		char align;
		/// cached width
		mutable int width;
		/// cached offset
		mutable int offset;
		/// how many lines to the left of this column?
		unsigned int lines;
		/// additional amount to the right to be skipped when drawing
		int skip;
		/// Special alignment.
		/// This does also contain align_ and lines_ if it is nonempty.
		/// It needs to be in sync with align_ and lines_ because some
		/// code only uses align_ and lines_.
		docstring special;
	};

public:
	/// sets nrows and ncols to 1, vertical alingment to 'c'
	InsetMathGrid(Buffer * buf);
	/// Note: columns first!
	InsetMathGrid(Buffer * buf, col_type m, row_type n);
	///
	InsetMathGrid(Buffer * buf, col_type m, row_type n, char valign,
		docstring const & halign);
	///
	marker_type marker(BufferView const *) const { return MARKER2; };
	///
	void metrics(MetricsInfo & mi, Dimension &) const;
	///
	void draw(PainterInfo & pi, int x, int y) const;
	///
	void metricsT(TextMetricsInfo const & mi, Dimension & dim) const;
	///
	void drawT(TextPainter & pi, int x, int y) const;
	///
	void updateBuffer(ParIterator const &, UpdateType);
	/// extract number of columns from alignment string
	static col_type guessColumns(docstring const & halign);
	/// accepts some LaTeX column codes: p,m,!,@,M,<,>
	void setHorizontalAlignments(docstring const & align);
	///
	void setHorizontalAlignment(char c, col_type col);
	///
	char horizontalAlignment(col_type col) const;
	///
	docstring horizontalAlignments() const;
	/// 't', 'b', or 'm'
	void setVerticalAlignment(char c);
	///
	char verticalAlignment() const;
	///
	void vcrskip(Length const &, row_type row);
	///
	Length vcrskip(row_type row) const;
	///
	void resize(short int type, col_type cols);
	///
	const RowInfo & rowinfo(row_type row) const;
	/// returns topmost row if passed (-1)
	RowInfo & rowinfo(row_type row);
	///
	const CellInfo & cellinfo(idx_type idx) const { return cellinfo_[idx]; }
	///
	CellInfo & cellinfo(idx_type idx) { return cellinfo_[idx]; }
	/// identifies GridInset
	InsetMathGrid * asGridInset() { return this; }
	/// identifies GridInset
	InsetMathGrid const * asGridInset() const { return this; }
	//
	bool isTable() const { return true; }
	///
	col_type ncols() const;
	///
	row_type nrows() const;
	///
	col_type col(idx_type idx) const;
	///
	row_type row(idx_type idx) const;
	/// number of columns of cell \p idx
	col_type ncellcols(idx_type idx) const;

	///
	bool idxUpDown(Cursor &, bool up) const;
	///
	bool idxBackward(Cursor &) const;
	///
	bool idxForward(Cursor &) const;
	//
	idx_type firstIdx() const;
	//
	idx_type lastIdx() const;
	///
	bool idxDelete(idx_type & idx);
	/// pulls cell after pressing erase
	void idxGlue(idx_type idx);

	/// add a row, one row down
	virtual void addRow(row_type r);
	/// delete a row
	virtual void delRow(row_type r);
	/// copy a row
	virtual void copyRow(row_type r);
	/// swap two rows
	virtual void swapRow(row_type r);
	/// add a column, here
	virtual void addCol(col_type c);
	/// delete a column
	virtual void delCol(col_type c);
	/// copy a column
	virtual void copyCol(col_type c);
	/// swap two columns
	virtual void swapCol(col_type c);
	///
	idx_type index(row_type r, col_type c) const;
	///
	bool idxBetween(idx_type idx, idx_type from, idx_type to) const;
	///
	virtual int defaultColSpace(col_type) { return 0; }
	///
	virtual char defaultColAlign(col_type) { return 'c'; }
	///
	void setDefaults();
	///
	virtual bool interpretString(Cursor & cur, docstring const & str);

	///
	virtual int colsep() const;
	///
	virtual int rowsep() const;
	///
	virtual int hlinesep() const;
	///
	virtual int vlinesep() const;
	///
	virtual int border() const;
	///
	virtual bool handlesMulticolumn() const { return false; }

	///
	void write(WriteStream & os) const;
	///
	void write(WriteStream & os,
		   row_type beg_row, col_type beg_col,
		   row_type end_row, col_type end_col) const;
	///
	void normalize(NormalStream &) const;
	///
	//void maple(MapleStream &) const;
	///
	void mathmlize(MathStream &) const;
	///
	void htmlize(HtmlStream &) const;
	///
	void htmlize(HtmlStream &, std::string attrib) const;
	///
	void validate(LaTeXFeatures & features) const;
	///
	//void octave(OctaveStream &) const;

protected:
	///
	void doDispatch(Cursor & cur, FuncRequest & cmd);
	///
	bool getStatus(Cursor & cur, FuncRequest const & cmd,
		FuncStatus & flag) const;
	/// returns x offset of cell compared to inset
	int cellXOffset(BufferView const &, idx_type idx) const;
	/// returns y offset of cell compared to inset
	int cellYOffset(BufferView const &, idx_type idx) const;
	/// Width of cell, taking combined columns into account
	int cellWidth(idx_type idx) const;
	///
	virtual int leftMargin() const { return 0; }
	///
	virtual int rightMargin() const { return 0; }

	/// returns proper 'end of line' code for LaTeX
	virtual docstring eolString(row_type row, bool fragile, bool latex,
			bool last_eoln) const;
	/// returns proper 'end of column' code for LaTeX
	virtual docstring eocString(col_type col, col_type lastcol) const;
	/// splits cells and shifts right part to the next cell
	void splitCell(Cursor & cur);
	/// Column alignment for display of cell \p idx.
	/// Must not be written to file!
	virtual char displayColAlign(idx_type idx) const;
	/// Column spacing for display of column \p col.
	/// Must not be written to file!
	virtual int displayColSpace(col_type col) const;

	// The following two functions are used in InsetMathHull and
	// InsetMathSplit.
	/// The value of a fixed col align for a certain hull type (can
	/// depend on the "indent math" setting).
	static char colAlign(HullType type, col_type col,  BufferParams const &);
	/// The value of a fixed col spacing for a certain hull type
	static int colSpace(HullType type, col_type col);

	/// positions of vertical and horizontal lines
	int vLineHOffset(col_type col, unsigned int line) const;
	int hLineVOffset(BufferView const &, row_type row, unsigned int line) const;

	///
	InsetCode lyxCode() const { return MATH_GRID_CODE; }

private:
	/// row info.
	/// rowinfo_[nrows()] is a dummy row used only for hlines.
	std::vector<RowInfo> rowinfo_;
	/// column info.
	/// colinfo_[ncols()] is a dummy column used only for vlines.
	std::vector<ColInfo> colinfo_;
	/// cell info
	std::vector<CellInfo> cellinfo_;
	///
	char v_align_; // FIXME: add approp. type
	///
	Inset * clone() const;
};


} // namespace lyx

#endif
