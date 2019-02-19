S1KD2DB_PARAMS+=-param spell.out.acronyms 1
S1KD2DB_PARAMS+=-param acronym.term.first 0

all: README.md

README.md: csdb/DMC-FOSSIG-A-01-01-0000-00A-040A-A_*_EN-CA.XML
	s1kd2db $^ $(S1KD2DB_PARAMS) | pandoc -f docbook -t gfm -o $@

clean:
	rm -f README.md
