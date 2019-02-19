all: README.md

README.md: csdb/DMC-FOSSIG-A-01-01-0000-00A-040A-A_*_EN-CA.XML
	s1kd2db $^ | pandoc -f docbook -t gfm -o $@

clean:
	rm -f README.md
