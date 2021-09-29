

files = as65c.build\
 link.build\
 hex2bin.build\
 rel_reader.build\
 addROMdata.build


all: $(files) 
	make clean
	
%.build:
	pyinstaller $(basename $*)/$(basename $*).py --onefile --noconfirm
	cp dist/$(basename $*) $(basename $*)
	rm $(basename $*)/__pycache__ -d -rf
	rm $(basename $*).spec


clean:
	rm build -d -rf
	rm dist -d -rf
