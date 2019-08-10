
TEMPLATE = app

DEFINES += QT_NO_KEYWORDS

DEFINES += BOOST_DISABLE_THREADS=1
DEFINES += BOOST_NO_WREGEX=1
DEFINES += BOOST_NO_WSTRING=1

cygwin {
DEFINES += BOOST_POSIX=1
DEFINES += BOOST_POSIX_API=1
DEFINES += BOOST_POSIX_PATH=1
}

LIBS += -laspell

INCLUDEPATH += \
../../src \
../../src/mathed \
../../src/insets \
../../src/frontends \
../../src/frontends/qt4 \
../../boost

SOURCES += \
../../boost/libs/regex/src/cpp_regex_traits.cpp \
../../boost/libs/regex/src/c_regex_traits.cpp \
../../boost/libs/regex/src/cregex.cpp \
../../boost/libs/regex/src/fileiter.cpp \
../../boost/libs/regex/src/instances.cpp \
../../boost/libs/regex/src/regex.cpp \
../../boost/libs/regex/src/regex_raw_buffer.cpp \
../../boost/libs/regex/src/regex_traits_defaults.cpp \
../../boost/libs/regex/src/w32_regex_traits.cpp \
../../boost/libs/regex/src/posix_api.cpp \
../../boost/libs/regex/src/wide_posix_api.cpp \
../../boost/libs/regex/src/regex_debug.cpp \
../../boost/libs/regex/src/winstances.cpp \
../../boost/libs/signals/src/connection.cpp \
../../boost/libs/signals/src/named_slot_map.cpp \
../../boost/libs/signals/src/signal_base.cpp \
../../boost/libs/signals/src/slot.cpp \
../../boost/libs/signals/src/trackable.cpp \
../../src/Author.cpp \
../../src/ASpell.cpp \
../../src/BiblioInfo.cpp \
../../src/Bidi.cpp \
../../src/boost.cpp \
../../src/Box.cpp \
../../src/BranchList.cpp \
../../src/Buffer.cpp \
../../src/buffer_funcs.cpp \
../../src/BufferList.cpp \
../../src/BufferParams.cpp \
../../src/BufferView.cpp \
../../src/Bullet.cpp \
../../src/Changes.cpp \
../../src/Chktex.cpp \
../../src/CmdDef.cpp \
../../src/Color.cpp \
../../src/ConverterCache.cpp \
../../src/Converter.cpp \
../../src/CoordCache.cpp \
../../src/Counters.cpp \
../../src/Cursor.cpp \
../../src/CursorSlice.cpp \
../../src/CutAndPaste.cpp \
../../src/DepTable.cpp \
../../src/Dimension.cpp \
../../src/DocIterator.cpp \
../../src/Encoding.cpp \
../../src/ErrorList.cpp \
../../src/Exporter.cpp \
../../src/factory.cpp \
../../src/Floating.cpp \
../../src/FloatList.cpp \
../../src/Font.cpp \
../../src/FontInfo.cpp \
../../src/FontList.cpp \
../../src/Format.cpp \
../../src/FuncRequest.cpp \
../../src/FuncStatus.cpp \
../../src/Graph.cpp \
../../src/IndicesList.cpp \
../../src/InsetIterator.cpp \
../../src/InsetList.cpp \
../../src/Intl.cpp \
../../src/KeyMap.cpp \
../../src/KeySequence.cpp \
../../src/Language.cpp \
../../src/LaTeX.cpp \
../../src/LaTeXFeatures.cpp \
../../src/LaTeXFonts.cpp \
../../src/Layout.cpp \
../../src/LayoutFile.cpp \
../../src/LayoutModuleList.cpp \
../../src/lengthcommon.cpp \
../../src/Length.cpp \
../../src/Lexer.cpp \
../../src/LyXAction.cpp \
../../src/LyX.cpp \
../../src/lyxfind.cpp \
../../src/LyXFunc.cpp \
../../src/LyXRC.cpp \
../../src/LyXVC.cpp \
../../src/main.cpp \
../../src/MetricsInfo.cpp \
../../src/ModuleList.cpp \
../../src/Mover.cpp \
../../src/output.cpp \
../../src/output_docbook.cpp \
../../src/output_latex.cpp \
../../src/OutputParams.cpp \
../../src/output_plaintext.cpp \
../../src/Paragraph.cpp \
../../src/paragraph_funcs.cpp \
../../src/ParagraphMetrics.cpp \
../../src/ParagraphParameters.cpp \
../../src/ParIterator.cpp \
../../src/PDFOptions.cpp \
../../src/PrinterParams.cpp \
../../src/Row.cpp \
../../src/rowpainter.cpp \
../../src/Server.cpp \
../../src/ServerSocket.cpp \
../../src/Session.cpp \
../../src/sgml.cpp \
../../src/Spacing.cpp \
../../src/TexRow.cpp \
../../src/TexStream.cpp \
../../src/Text2.cpp \
../../src/Text3.cpp \
../../src/TextClass.cpp \
../../src/Text.cpp \
../../src/TextMetrics.cpp \
../../src/Thesaurus.cpp \
../../src/TocBackend.cpp \
../../src/Trans.cpp \
../../src/Undo.cpp \
../../src/VCBackend.cpp \
../../src/version.cpp \
../../src/VSpace.cpp \
../../src/WordList.cpp \
../../src/graphics/GraphicsCache.cpp \
../../src/graphics/GraphicsCacheItem.cpp \
../../src/graphics/GraphicsConverter.cpp \
../../src/graphics/GraphicsLoader.cpp \
../../src/graphics/GraphicsParams.cpp \
../../src/graphics/PreviewImage.cpp \
../../src/graphics/PreviewLoader.cpp \
../../src/graphics/Previews.cpp \
../../src/insets/ExternalSupport.cpp \
../../src/insets/ExternalTemplate.cpp \
../../src/insets/ExternalTransforms.cpp \
../../src/insets/InsetArgument.cpp \
../../src/insets/InsetBibitem.cpp \
../../src/insets/InsetBibtex.cpp \
../../src/insets/InsetBox.cpp \
../../src/insets/InsetBranch.cpp \
../../src/insets/InsetCaption.cpp \
../../src/insets/InsetCitation.cpp \
../../src/insets/InsetCollapsable.cpp \
../../src/insets/InsetCommand.cpp \
../../src/insets/InsetCommandParams.cpp \
../../src/insets/Inset.cpp \
../../src/insets/InsetERT.cpp \
../../src/insets/InsetExternal.cpp \
../../src/insets/InsetFlex.cpp \
../../src/insets/InsetFloat.cpp \
../../src/insets/InsetFloatList.cpp \
../../src/insets/InsetFoot.cpp \
../../src/insets/InsetFootlike.cpp \
../../src/insets/InsetGraphics.cpp \
../../src/insets/InsetGraphicsParams.cpp \
../../src/insets/InsetHyperlink.cpp \
../../src/insets/InsetInclude.cpp \
../../src/insets/InsetIndex.cpp \
../../src/insets/InsetInfo.cpp \
../../src/insets/InsetLabel.cpp \
../../src/insets/InsetLayout.cpp \
../../src/insets/InsetLine.cpp \
../../src/insets/InsetListings.cpp \
../../src/insets/InsetListingsParams.cpp \
../../src/insets/InsetMarginal.cpp \
../../src/insets/InsetNewline.cpp \
../../src/insets/InsetNewpage.cpp \
../../src/insets/InsetNomencl.cpp \
../../src/insets/InsetNote.cpp \
../../src/insets/InsetPhantom.cpp \
../../src/insets/InsetQuotes.cpp \
../../src/insets/InsetRef.cpp \
../../src/insets/InsetScript.cpp \
../../src/insets/InsetSpace.cpp \
../../src/insets/InsetSpecialChar.cpp \
../../src/insets/InsetTabular.cpp \
../../src/insets/InsetText.cpp \
../../src/insets/InsetTOC.cpp \
../../src/insets/InsetVSpace.cpp \
../../src/insets/InsetWrap.cpp \
../../src/insets/RenderButton.cpp \
../../src/insets/RenderGraphic.cpp \
../../src/insets/RenderPreview.cpp \
../../src/mathed/CommandInset.cpp \
../../src/mathed/InsetMathAMSArray.cpp \
../../src/mathed/InsetMathArray.cpp \
../../src/mathed/InsetMathBig.cpp \
../../src/mathed/InsetMathBoldSymbol.cpp \
../../src/mathed/InsetMathBox.cpp \
../../src/mathed/InsetMathBrace.cpp \
../../src/mathed/InsetMathCases.cpp \
../../src/mathed/InsetMathChar.cpp \
../../src/mathed/InsetMathColor.cpp \
../../src/mathed/InsetMathComment.cpp \
../../src/mathed/InsetMath.cpp \
../../src/mathed/InsetMathDecoration.cpp \
../../src/mathed/InsetMathDelim.cpp \
../../src/mathed/InsetMathDiff.cpp \
../../src/mathed/InsetMathDots.cpp \
../../src/mathed/InsetMathEnsureMath.cpp \
../../src/mathed/InsetMathEnv.cpp \
../../src/mathed/InsetMathExFunc.cpp \
../../src/mathed/InsetMathExInt.cpp \
../../src/mathed/InsetMathFont.cpp \
../../src/mathed/InsetMathFontOld.cpp \
../../src/mathed/InsetMathFrac.cpp \
../../src/mathed/InsetMathGrid.cpp \
../../src/mathed/InsetMathHull.cpp \
../../src/mathed/InsetMathKern.cpp \
../../src/mathed/InsetMathLefteqn.cpp \
../../src/mathed/InsetMathLim.cpp \
../../src/mathed/InsetMathMatrix.cpp \
../../src/mathed/InsetMathMBox.cpp \
../../src/mathed/InsetMathNest.cpp \
../../src/mathed/InsetMathNumber.cpp \
../../src/mathed/InsetMathOverset.cpp \
../../src/mathed/InsetMathPar.cpp \
../../src/mathed/InsetMathPhantom.cpp \
../../src/mathed/InsetMathRef.cpp \
../../src/mathed/InsetMathRoot.cpp \
../../src/mathed/InsetMathScript.cpp \
../../src/mathed/InsetMathSize.cpp \
../../src/mathed/InsetMathSpace.cpp \
../../src/mathed/InsetMathSpecialChar.cpp \
../../src/mathed/InsetMathSplit.cpp \
../../src/mathed/InsetMathSqrt.cpp \
../../src/mathed/InsetMathStackrel.cpp \
../../src/mathed/InsetMathString.cpp \
../../src/mathed/InsetMathSubstack.cpp \
../../src/mathed/InsetMathSymbol.cpp \
../../src/mathed/InsetMathTabular.cpp \
../../src/mathed/InsetMathUnderset.cpp \
../../src/mathed/InsetMathUnknown.cpp \
../../src/mathed/InsetMathXArrow.cpp \
../../src/mathed/InsetMathXYMatrix.cpp \
../../src/mathed/MacroTable.cpp \
../../src/mathed/MathAtom.cpp \
../../src/mathed/MathAutoCorrect.cpp \
../../src/mathed/MathData.cpp \
../../src/mathed/MathExtern.cpp \
../../src/mathed/MathFactory.cpp \
../../src/mathed/MathMacroArgument.cpp \
../../src/mathed/MathMacro.cpp \
../../src/mathed/MathMacroTemplate.cpp \
../../src/mathed/MathParser.cpp \
../../src/mathed/MathStream.cpp \
../../src/mathed/MathSupport.cpp \
../../src/mathed/TextPainter.cpp \
../../src/support/convert.cpp \
../../src/support/debug.cpp \
../../src/support/docstream.cpp \
../../src/support/docstring.cpp \
../../src/support/environment.cpp \
../../src/support/FileMonitor.cpp \
../../src/support/FileName.cpp \
../../src/support/filetools.cpp \
../../src/support/ForkedCalls.cpp \
../../src/support/gettext.cpp \
../../src/support/gzstream.cpp \
../../src/support/kill.cpp \
../../src/support/lassert.cpp \
../../src/support/lstrings.cpp \
../../src/support/lyxtime.cpp \
../../src/support/Messages.cpp \
../../src/support/mythes/mythes.cxx \
../../src/support/os.cpp \
../../src/support/Package.cpp \
../../src/support/Path.cpp \
../../src/support/qstring_helpers.cpp \
../../src/support/SignalSlot.cpp \
../../src/support/SignalSlotPrivate.cpp \
../../src/support/socktools.cpp \
../../src/support/Systemcall.cpp \
../../src/support/Timeout.cpp \
../../src/support/unicode.cpp \
../../src/support/userinfo.cpp \
../../src/frontends/qt4/Action.cpp \
../../src/frontends/qt4/BulletsModule.cpp \
../../src/frontends/qt4/ButtonController.cpp \
../../src/frontends/qt4/ButtonPolicy.cpp \
../../src/frontends/qt4/ColorCache.cpp \
../../src/frontends/qt4/CustomizedWidgets.cpp \
../../src/frontends/qt4/Dialog.cpp \
../../src/frontends/qt4/EmptyTable.cpp \
../../src/frontends/qt4/FileDialog.cpp \
../../src/frontends/qt4/FindAndReplace.cpp \
../../src/frontends/qt4/FloatPlacement.cpp \
../../src/frontends/qt4/GuiAbout.cpp \
../../src/frontends/qt4/GuiAlert.cpp \
../../src/frontends/qt4/GuiApplication.cpp \
../../src/frontends/qt4/GuiBibitem.cpp \
../../src/frontends/qt4/GuiBibtex.cpp \
../../src/frontends/qt4/GuiBox.cpp \
../../src/frontends/qt4/GuiBranch.cpp \
../../src/frontends/qt4/GuiBranches.cpp \
../../src/frontends/qt4/GuiChanges.cpp \
../../src/frontends/qt4/GuiCharacter.cpp \
../../src/frontends/qt4/GuiCitation.cpp \
../../src/frontends/qt4/GuiClipboard.cpp \
../../src/frontends/qt4/GuiCommandBuffer.cpp \
../../src/frontends/qt4/GuiCommandEdit.cpp \
../../src/frontends/qt4/GuiCompleter.cpp \
../../src/frontends/qt4/GuiDelimiter.cpp \
../../src/frontends/qt4/GuiDialog.cpp \
../../src/frontends/qt4/GuiDocument.cpp \
../../src/frontends/qt4/GuiErrorList.cpp \
../../src/frontends/qt4/GuiERT.cpp \
../../src/frontends/qt4/GuiExternal.cpp \
../../src/frontends/qt4/GuiFloat.cpp \
../../src/frontends/qt4/GuiFontExample.cpp \
../../src/frontends/qt4/GuiFontLoader.cpp \
../../src/frontends/qt4/GuiFontMetrics.cpp \
../../src/frontends/qt4/GuiGraphics.cpp \
../../src/frontends/qt4/GuiHSpace.cpp \
../../src/frontends/qt4/GuiHyperlink.cpp \
../../src/frontends/qt4/GuiIdListModel.cpp \
../../src/frontends/qt4/GuiImage.cpp \
../../src/frontends/qt4/GuiInclude.cpp \
../../src/frontends/qt4/GuiIndex.cpp \
../../src/frontends/qt4/GuiIndices.cpp \
../../src/frontends/qt4/GuiInfo.cpp \
../../src/frontends/qt4/GuiKeySymbol.cpp \
../../src/frontends/qt4/GuiLabel.cpp \
../../src/frontends/qt4/GuiListings.cpp \
../../src/frontends/qt4/GuiLog.cpp \
../../src/frontends/qt4/GuiMathMatrix.cpp \
../../src/frontends/qt4/GuiNomencl.cpp \
../../src/frontends/qt4/GuiNote.cpp \
../../src/frontends/qt4/GuiPainter.cpp \
../../src/frontends/qt4/GuiParagraph.cpp \
../../src/frontends/qt4/GuiPhantom.cpp \
../../src/frontends/qt4/GuiPrefs.cpp \
../../src/frontends/qt4/GuiPrint.cpp \
../../src/frontends/qt4/GuiPrintindex.cpp \
../../src/frontends/qt4/GuiPrintNomencl.cpp \
../../src/frontends/qt4/GuiRef.cpp \
../../src/frontends/qt4/GuiSearch.cpp \
../../src/frontends/qt4/GuiSelection.cpp \
../../src/frontends/qt4/GuiSelectionManager.cpp \
../../src/frontends/qt4/GuiSendto.cpp \
../../src/frontends/qt4/GuiSetBorder.cpp \
../../src/frontends/qt4/GuiShowFile.cpp \
../../src/frontends/qt4/GuiSpellchecker.cpp \
../../src/frontends/qt4/GuiSymbols.cpp \
../../src/frontends/qt4/GuiTabular.cpp \
../../src/frontends/qt4/GuiTabularCreate.cpp \
../../src/frontends/qt4/GuiTexinfo.cpp \
../../src/frontends/qt4/GuiThesaurus.cpp \
../../src/frontends/qt4/GuiToc.cpp \
../../src/frontends/qt4/GuiToolbar.cpp \
../../src/frontends/qt4/GuiView.cpp \
../../src/frontends/qt4/GuiViewSource.cpp \
../../src/frontends/qt4/GuiVSpace.cpp \
../../src/frontends/qt4/GuiWorkArea.cpp \
../../src/frontends/qt4/GuiWrap.cpp \
../../src/frontends/qt4/IconPalette.cpp \
../../src/frontends/qt4/InsertTableWidget.cpp \
../../src/frontends/qt4/LaTeXHighlighter.cpp \
../../src/frontends/qt4/LengthCombo.cpp \
../../src/frontends/qt4/LyXFileDialog.cpp \
../../src/frontends/qt4/Menus.cpp \
../../src/frontends/qt4/PanelStack.cpp \
../../src/frontends/qt4/qt_helpers.cpp \
../../src/frontends/qt4/TocModel.cpp \
../../src/frontends/qt4/TocWidget.cpp \
../../src/frontends/qt4/Toolbars.cpp \
../../src/frontends/qt4/Validator.cpp \
../../src/frontends/WorkAreaManager.cpp \

HEADERS += \
../../src/ASpell_local.h \
../../src/Author.h \
../../src/BiblioInfo.h \
../../src/Bidi.h \
../../src/Box.h \
../../src/BranchList.h \
../../src/buffer_funcs.h \
../../src/Buffer.h \
../../src/BufferList.h \
../../src/BufferParams.h \
../../src/BufferView.h \
../../src/Bullet.h \
../../src/Changes.h \
../../src/Chktex.h \
../../src/Citation.h \
../../src/CmdDef.h \
../../src/ColorCode.h \
../../src/Color.h \
../../src/CompletionList.h \
../../src/ConverterCache.h \
../../src/Converter.h \
../../src/CoordCache.h \
../../src/Counters.h \
../../src/Cursor.h \
../../src/CursorSlice.h \
../../src/CutAndPaste.h \
../../src/DepTable.h \
../../src/Dimension.h \
../../src/DispatchResult.h \
../../src/DocIterator.h \
../../src/Encoding.h \
../../src/ErrorList.h \
../../src/Exporter.h \
../../src/factory.h \
../../src/Floating.h \
../../src/FloatList.h \
../../src/FontEnums.h \
../../src/Font.h \
../../src/FontInfo.h \
../../src/FontList.h \
../../src/Format.h \
../../src/FuncCode.h \
../../src/FuncRequest.h \
../../src/FuncStatus.h \
../../src/Graph.h \
../../src/InsetIterator.h \
../../src/InsetList.h \
../../src/Intl.h \
../../src/KeyMap.h \
../../src/KeySequence.h \
../../src/Language.h \
../../src/LaTeXFeatures.h \
../../src/LaTeXFonts.h \
../../src/LaTeX.h \
../../src/LayoutEnums.h \
../../src/LayoutFile.h \
../../src/LayoutModuleList.h \
../../src/Layout.h \
../../src/Length.h \
../../src/Lexer.h \
../../src/LyXAction.h \
../../src/lyxfind.h \
../../src/LyXFunc.h \
../../src/LyX.h \
../../src/LyXRC.h \
../../src/LyXVC.h \
../../src/MetricsInfo.h \
../../src/ModuleList.h \
../../src/Mover.h \
../../src/output_docbook.h \
../../src/output.h \
../../src/output_latex.h \
../../src/OutputParams.h \
../../src/output_plaintext.h \
../../src/paper.h \
../../src/paragraph_funcs.h \
../../src/Paragraph.h \
../../src/ParagraphList.h \
../../src/ParagraphMetrics.h \
../../src/ParagraphParameters.h \
../../src/ParIterator.h \
../../src/PDFOptions.h \
../../src/PrinterParams.h \
../../src/Row.h \
../../src/rowpainter.h \
../../src/Server.h \
../../src/ServerSocket.h \
../../src/Session.h \
../../src/sgml.h \
../../src/Spacing.h \
../../src/TexRow.h \
../../src/TexStream.h \
../../src/TextClass.h \
../../src/Text.h \
../../src/TextMetrics.h \
../../src/Thesaurus.h \
../../src/TocBackend.h \
../../src/Trans.h \
../../src/Undo.h \
../../src/update_flags.h \
../../src/VCBackend.h \
../../src/version.h \
../../src/VSpace.h \
../../src/WordLangTuple.h \
../../src/WordList.h \
../../src/insets/ExternalSupport.h \
../../src/insets/ExternalTemplate.h \
../../src/insets/ExternalTransforms.h \
../../src/insets/Inset.h \
../../src/insets/InsetArgument.h \
../../src/insets/InsetBibitem.h \
../../src/insets/InsetBibtex.h \
../../src/insets/InsetBox.h \
../../src/insets/InsetBranch.h \
../../src/insets/InsetCaption.h \
../../src/insets/InsetCitation.h \
../../src/insets/InsetCode.h \
../../src/insets/InsetCollapsable.h \
../../src/insets/InsetCommand.h \
../../src/insets/InsetCommandParams.h \
../../src/insets/InsetERT.h \
../../src/insets/InsetExternal.h \
../../src/insets/InsetFlex.h \
../../src/insets/InsetFloat.h \
../../src/insets/InsetFloatList.h \
../../src/insets/InsetFoot.h \
../../src/insets/InsetFootlike.h \
../../src/insets/InsetGraphics.h \
../../src/insets/InsetGraphicsParams.h \
../../src/insets/InsetHyperlink.h \
../../src/insets/InsetInclude.h \
../../src/insets/InsetIndex.h \
../../src/insets/InsetInfo.h \
../../src/insets/InsetLabel.h \
../../src/insets/InsetLayout.h \
../../src/insets/InsetLine.h \
../../src/insets/InsetListings.h \
../../src/insets/InsetListingsParams.h \
../../src/insets/InsetMarginal.h \
../../src/insets/InsetNewline.h \
../../src/insets/InsetNewpage.h \
../../src/insets/InsetNomencl.h \
../../src/insets/InsetNote.h \
../../src/insets/InsetQuotes.h \
../../src/insets/InsetPhantom.h \
../../src/insets/InsetRef.h \
../../src/insets/InsetScript.h \
../../src/insets/InsetSpace.h \
../../src/insets/InsetSpecialChar.h \
../../src/insets/InsetTOC.h \
../../src/insets/InsetTabular.h \
../../src/insets/InsetText.h \
../../src/insets/InsetVSpace.h \
../../src/insets/InsetWrap.h \
../../src/insets/RenderBase.h \
../../src/insets/RenderButton.h \
../../src/insets/RenderGraphic.h \
../../src/insets/RenderPreview.h \
../../src/graphics/GraphicsCacheItem.h \
../../src/graphics/PreviewImage.h \
../../src/graphics/GraphicsImage.h \
../../src/graphics/GraphicsParams.h \
../../src/graphics/GraphicsCache.h \
../../src/graphics/GraphicsLoader.h \
../../src/graphics/GraphicsConverter.h \
../../src/graphics/PreviewLoader.h \
../../src/graphics/GraphicsTypes.h \
../../src/graphics/Previews.h \
../../src/support/convert.h \
../../src/support/copied_ptr.h \
../../src/support/debug.h \
../../src/support/docstream.h \
../../src/support/docstring.h \
../../src/support/docstring_list.h \
../../src/support/environment.h \
../../src/support/ExceptionMessage.h \
../../src/support/FileMonitor.h \
../../src/support/FileName.h \
../../src/support/FileNameList.h \
../../src/support/filetools.h \
../../src/support/foreach.h \
../../src/support/ForkedCalls.h \
../../src/support/gettext.h \
../../src/support/gzstream.h \
../../src/support/lassert.h \
../../src/support/limited_stack.h \
../../src/support/linkback/AppleScript.h \
../../src/support/linkback/LinkBack.h \
../../src/support/linkback/LinkBackProxy.h \
../../src/support/linkback/LinkBackServer.h \
../../src/support/lstrings.h \
../../src/support/lyxalgo.h \
../../src/support/lyxlib.h \
../../src/support/lyxtime.h \
../../src/support/mythes/mythes.hxx \
../../src/support/Messages.h \
../../src/support/os.h \
../../src/support/os_win32.h \
../../src/support/Package.h \
../../src/support/Path.h \
../../src/support/qstring_helpers.h \
../../src/support/RandomAccessList.h \
../../src/support/socktools.h \
../../src/support/strfwd.h \
../../src/support/SignalSlot.h \
../../src/support/SignalSlotPrivate.h \
../../src/support/Systemcall.h \
../../src/support/SystemcallPrivate.h \
../../src/support/textutils.h \
../../src/support/Timeout.h \
../../src/support/Translator.h \
../../src/support/types.h \
../../src/support/unicode.h \
../../src/support/userinfo.h \
../../src/support/weighted_btree.h \
../../src/mathed/CommandInset.h \
../../src/mathed/InsetMath.h \
../../src/mathed/InsetMathAMSArray.h \
../../src/mathed/InsetMathArray.h \
../../src/mathed/InsetMathBig.h \
../../src/mathed/InsetMathBoldSymbol.h \
../../src/mathed/InsetMathBox.h \
../../src/mathed/InsetMathBrace.h \
../../src/mathed/InsetMathCases.h \
../../src/mathed/InsetMathChar.h \
../../src/mathed/InsetMathColor.h \
../../src/mathed/InsetMathComment.h \
../../src/mathed/InsetMathDecoration.h \
../../src/mathed/InsetMathDelim.h \
../../src/mathed/InsetMathDiff.h \
../../src/mathed/InsetMathDots.h \
../../src/mathed/InsetMathEnsureMath.h \
../../src/mathed/InsetMathEnv.h \
../../src/mathed/InsetMathExFunc.h \
../../src/mathed/InsetMathExInt.h \
../../src/mathed/InsetMathFont.h \
../../src/mathed/InsetMathFontOld.h \
../../src/mathed/InsetMathFrac.h \
../../src/mathed/InsetMathGrid.h \
../../src/mathed/InsetMathHull.h \
../../src/mathed/InsetMathKern.h \
../../src/mathed/InsetMathLefteqn.h \
../../src/mathed/InsetMathLim.h \
../../src/mathed/InsetMathMBox.h \
../../src/mathed/InsetMathMatrix.h \
../../src/mathed/InsetMathNest.h \
../../src/mathed/InsetMathNumber.h \
../../src/mathed/InsetMathOverset.h \
../../src/mathed/InsetMathPar.h \
../../src/mathed/InsetMathPhantom.h \
../../src/mathed/InsetMathRef.h \
../../src/mathed/InsetMathRoot.h \
../../src/mathed/InsetMathScript.h \
../../src/mathed/InsetMathSize.h \
../../src/mathed/InsetMathSpace.h \
../../src/mathed/InsetMathSpecialChar.h \
../../src/mathed/InsetMathSplit.h \
../../src/mathed/InsetMathSqrt.h \
../../src/mathed/InsetMathStackrel.h \
../../src/mathed/InsetMathString.h \
../../src/mathed/InsetMathSubstack.h \
../../src/mathed/InsetMathSymbol.h \
../../src/mathed/InsetMathTabular.h \
../../src/mathed/InsetMathUnderset.h \
../../src/mathed/InsetMathUnknown.h \
../../src/mathed/InsetMathXArrow.h \
../../src/mathed/InsetMathXYMatrix.h \
../../src/mathed/MacroTable.h \
../../src/mathed/MathAtom.h \
../../src/mathed/MathAutoCorrect.h \
../../src/mathed/MathCompletionList.h \
../../src/mathed/MathData.h \
../../src/mathed/MathExtern.h \
../../src/mathed/MathFactory.h \
../../src/mathed/MathGridInfo.h \
../../src/mathed/MathMacro.h \
../../src/mathed/MathMacroArgument.h \
../../src/mathed/MathMacroTemplate.h \
../../src/mathed/MathParser.h \
../../src/mathed/MathStream.h \
../../src/mathed/MathSupport.h \
../../src/mathed/ReplaceData.h \
../../src/mathed/TextPainter.h \
../../src/frontends/WorkAreaManager.h \
../../src/frontends/LyXView.h \
../../src/frontends/Selection.h \
../../src/frontends/Application.h \
../../src/frontends/Painter.h \
../../src/frontends/alert.h \
../../src/frontends/Clipboard.h \
../../src/frontends/KeyModifier.h \
../../src/frontends/qt4/Action.h \
../../src/frontends/qt4/BulletsModule.h \
../../src/frontends/qt4/ButtonController.h \
../../src/frontends/qt4/ButtonPolicy.h \
../../src/frontends/qt4/ColorCache.h \
../../src/frontends/qt4/CustomizedWidgets.h \
../../src/frontends/qt4/Dialog.h \
../../src/frontends/qt4/DialogView.h \
../../src/frontends/qt4/DockView.h \
../../src/frontends/qt4/EmptyTable.h \
../../src/frontends/qt4/FileDialog.h \
../../src/frontends/qt4/FindAndReplace.h \
../../src/frontends/qt4/FloatPlacement.h \
../../src/frontends/qt4/GuiAbout.h \
../../src/frontends/qt4/GuiApplication.h \
../../src/frontends/qt4/GuiBibitem.h \
../../src/frontends/qt4/GuiBibtex.h \
../../src/frontends/qt4/GuiBox.h \
../../src/frontends/qt4/GuiBranches.h \
../../src/frontends/qt4/GuiBranch.h \
../../src/frontends/qt4/GuiChanges.h \
../../src/frontends/qt4/GuiCharacter.h \
../../src/frontends/qt4/GuiCitation.h \
../../src/frontends/qt4/GuiClipboard.h \
../../src/frontends/qt4/GuiCommandBuffer.h \
../../src/frontends/qt4/GuiCommandEdit.h \
../../src/frontends/qt4/GuiCompleter.h \
../../src/frontends/qt4/GuiDelimiter.h \
../../src/frontends/qt4/GuiDialog.h \
../../src/frontends/qt4/GuiDocument.h \
../../src/frontends/qt4/GuiErrorList.h \
../../src/frontends/qt4/GuiERT.h \
../../src/frontends/qt4/GuiExternal.h \
../../src/frontends/qt4/GuiFloat.h \
../../src/frontends/qt4/GuiFontExample.h \
../../src/frontends/qt4/GuiFontLoader.h \
../../src/frontends/qt4/GuiFontMetrics.h \
../../src/frontends/qt4/GuiGraphics.h \
../../src/frontends/qt4/GuiGraphicsUi.h \
../../src/frontends/qt4/GuiHSpace.h \
../../src/frontends/qt4/GuiHyperlink.h \
../../src/frontends/qt4/GuiIdListModel.h \
../../src/frontends/qt4/GuiImage.h \
../../src/frontends/qt4/GuiInclude.h \
../../src/frontends/qt4/GuiIndex.h \
../../src/frontends/qt4/GuiIndices.h \
../../src/frontends/qt4/GuiInfo.h \
../../src/frontends/qt4/GuiKeySymbol.h \
../../src/frontends/qt4/GuiLabel.h \
../../src/frontends/qt4/GuiListings.h \
../../src/frontends/qt4/GuiLog.h \
../../src/frontends/qt4/GuiMathMatrix.h \
../../src/frontends/qt4/GuiNomencl.h \
../../src/frontends/qt4/GuiNote.h \
../../src/frontends/qt4/GuiPainter.h \
../../src/frontends/qt4/GuiParagraph.h \
../../src/frontends/qt4/GuiPhantom.h \
../../src/frontends/qt4/GuiPrefs.h \
../../src/frontends/qt4/GuiPrint.h \
../../src/frontends/qt4/GuiPrintindex.h \
../../src/frontends/qt4/GuiPrintNomencl.h \
../../src/frontends/qt4/GuiRef.h \
../../src/frontends/qt4/GuiSearch.h \
../../src/frontends/qt4/GuiSelection.h \
../../src/frontends/qt4/GuiSelectionManager.h \
../../src/frontends/qt4/GuiSendto.h \
../../src/frontends/qt4/GuiSetBorder.h \
../../src/frontends/qt4/GuiShowFile.h \
../../src/frontends/qt4/GuiSpellchecker.h \
../../src/frontends/qt4/GuiSymbols.h \
../../src/frontends/qt4/GuiTabularCreate.h \
../../src/frontends/qt4/GuiTabular.h \
../../src/frontends/qt4/GuiTexinfo.h \
../../src/frontends/qt4/GuiThesaurus.h \
../../src/frontends/qt4/GuiToc.h \
../../src/frontends/qt4/GuiToolbar.h \
../../src/frontends/qt4/GuiView.h \
../../src/frontends/qt4/GuiViewSource.h \
../../src/frontends/qt4/GuiVSpace.h \
../../src/frontends/qt4/GuiWorkArea.h \
../../src/frontends/qt4/GuiWrap.h \
../../src/frontends/qt4/IconPalette.h \
../../src/frontends/qt4/InsertTableWidget.h \
../../src/frontends/qt4/LaTeXHighlighter.h \
../../src/frontends/qt4/LengthCombo.h \
../../src/frontends/qt4/LyXFileDialog.h \
../../src/frontends/qt4/Menus.h \
../../src/frontends/qt4/PanelStack.h \
../../src/frontends/qt4/qt_helpers.h \
../../src/frontends/qt4/qt_i18n.h \
../../src/frontends/qt4/TocModel.h \
../../src/frontends/qt4/TocWidget.h \
../../src/frontends/qt4/Toolbars.h \
../../src/frontends/qt4/Validator.h \
../../src/frontends/WorkArea.h \
../../src/frontends/FontLoader.h \
../../src/frontends/mouse_state.h \
../../src/frontends/FontMetrics.h \
../../src/frontends/KeySymbol.h \
../../src/frontends/Delegates.h

FORMS = \
../../src/frontends/qt4/ui/AboutUi.ui \
../../src/frontends/qt4/ui/BibitemUi.ui \
../../src/frontends/qt4/ui/BiblioUi.ui \
../../src/frontends/qt4/ui/BibtexAddUi.ui \
../../src/frontends/qt4/ui/BibtexUi.ui \
../../src/frontends/qt4/ui/BoxUi.ui \
../../src/frontends/qt4/ui/BranchesUi.ui \
../../src/frontends/qt4/ui/BranchUi.ui \
../../src/frontends/qt4/ui/BulletsUi.ui \
../../src/frontends/qt4/ui/ChangesUi.ui \
../../src/frontends/qt4/ui/CharacterUi.ui \
../../src/frontends/qt4/ui/CitationUi.ui \
../../src/frontends/qt4/ui/DelimiterUi.ui \
../../src/frontends/qt4/ui/DocumentUi.ui \
../../src/frontends/qt4/ui/ErrorListUi.ui \
../../src/frontends/qt4/ui/ERTUi.ui \
../../src/frontends/qt4/ui/ExternalUi.ui \
../../src/frontends/qt4/ui/FindAndReplaceUi.ui \
../../src/frontends/qt4/ui/FloatPlacementUi.ui \
../../src/frontends/qt4/ui/FontUi.ui \
../../src/frontends/qt4/ui/GraphicsUi.ui \
../../src/frontends/qt4/ui/HSpaceUi.ui \
../../src/frontends/qt4/ui/HyperlinkUi.ui \
../../src/frontends/qt4/ui/IndexUi.ui \
../../src/frontends/qt4/ui/IndicesUi.ui \
../../src/frontends/qt4/ui/IncludeUi.ui \
../../src/frontends/qt4/ui/InfoUi.ui \
../../src/frontends/qt4/ui/LabelUi.ui \
../../src/frontends/qt4/ui/LanguageUi.ui \
../../src/frontends/qt4/ui/LaTeXUi.ui \
../../src/frontends/qt4/ui/ListingsUi.ui \
../../src/frontends/qt4/ui/LogUi.ui \
../../src/frontends/qt4/ui/MarginsUi.ui \
../../src/frontends/qt4/ui/MathMatrixUi.ui \
../../src/frontends/qt4/ui/MathsUi.ui \
../../src/frontends/qt4/ui/ModulesUi.ui \
../../src/frontends/qt4/ui/NomenclUi.ui \
../../src/frontends/qt4/ui/NoteUi.ui \
../../src/frontends/qt4/ui/NumberingUi.ui \
../../src/frontends/qt4/ui/OutputUi.ui \
../../src/frontends/qt4/ui/PageLayoutUi.ui \
../../src/frontends/qt4/ui/ParagraphUi.ui \
../../src/frontends/qt4/ui/PDFSupportUi.ui \
../../src/frontends/qt4/ui/PhantomUi.ui \
../../src/frontends/qt4/ui/PreambleUi.ui \
../../src/frontends/qt4/ui/PrefColorsUi.ui \
../../src/frontends/qt4/ui/PrefCompletionUi.ui \
../../src/frontends/qt4/ui/PrefConvertersUi.ui \
../../src/frontends/qt4/ui/PrefDisplayUi.ui \
../../src/frontends/qt4/ui/PrefEditUi.ui \
../../src/frontends/qt4/ui/PrefFileformatsUi.ui \
../../src/frontends/qt4/ui/PrefIdentityUi.ui \
../../src/frontends/qt4/ui/PrefInputUi.ui \
../../src/frontends/qt4/ui/PrefLanguageUi.ui \
../../src/frontends/qt4/ui/PrefLatexUi.ui \
../../src/frontends/qt4/ui/PrefPathsUi.ui \
../../src/frontends/qt4/ui/PrefPrinterUi.ui \
../../src/frontends/qt4/ui/PrefScreenFontsUi.ui \
../../src/frontends/qt4/ui/PrefShortcutsUi.ui \
../../src/frontends/qt4/ui/PrefSpellcheckerUi.ui \
../../src/frontends/qt4/ui/PrefsUi.ui \
../../src/frontends/qt4/ui/PrefUi.ui \
../../src/frontends/qt4/ui/PrintUi.ui \
../../src/frontends/qt4/ui/PrintindexUi.ui \
../../src/frontends/qt4/ui/PrintNomenclUi.ui \
../../src/frontends/qt4/ui/RefUi.ui \
../../src/frontends/qt4/ui/SearchUi.ui \
../../src/frontends/qt4/ui/SendtoUi.ui \
../../src/frontends/qt4/ui/ShortcutUi.ui \
../../src/frontends/qt4/ui/ShowFileUi.ui \
../../src/frontends/qt4/ui/SpellcheckerUi.ui \
../../src/frontends/qt4/ui/SymbolsUi.ui \
../../src/frontends/qt4/ui/TabularCreateUi.ui \
../../src/frontends/qt4/ui/TabularUi.ui \
../../src/frontends/qt4/ui/TexinfoUi.ui \
../../src/frontends/qt4/ui/TextLayoutUi.ui \
../../src/frontends/qt4/ui/ThesaurusUi.ui \
../../src/frontends/qt4/ui/TocUi.ui \
../../src/frontends/qt4/ui/ToggleWarningUi.ui \
../../src/frontends/qt4/ui/ViewSourceUi.ui \
../../src/frontends/qt4/ui/VSpaceUi.ui \
../../src/frontends/qt4/ui/WrapUi.ui \

RESOURCES += $$PWD/Resources.qrc

aspell {
SOURCES += ../../src/ASpell.cpp 
}
