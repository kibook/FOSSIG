PDF_PARAMS+=-param generate.table.of.contents 0
PDF_PARAMS+=-param show.unclassified 0
PDF_PARAMS+=-stringparam front.matter.info.codes '005'
PDF_PARAMS+=-stringparam simple.info.codes '009'
PDF_PARAMS+=-param title.page.publisher 0
PDF_PARAMS+=-param show.schema.heading 0
PDF_PARAMS+=-param include.pmentry.bookmarks 1

.PHONY: all clean

OUTPUT=FOSSIG-KHZAE-00001-00.pdf

all: $(OUTPUT)

DMC-FOSSIG-A-00-00-0000-00A-001A-A_%_EN-CA.XML: PMC-FOSSIG-KHZAE-00001-00_%_EN-CA.XML
	s1kd-fmgen -P $^ -f $@

DMC-FOSSIG-A-00-00-0000-00A-005A-A_%_EN-CA.XML: DMC-*-040A-*.XML
	s1kd-acronyms -dx $^ | xml-merge -f $@ -

$(OUTPUT): PMC-FOSSIG-KHZAE-00001-00_000-01_EN-CA.XML DMC-*.XML ICN-*.*
	s1kd-flatten -x $< | s1kd2pdf -o $@ - $(PDF_PARAMS)

clean:
	rm -f $(OUTPUT)
