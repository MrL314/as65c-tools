

files = as65c.exe\
 link.exe\
 hex2bin.exe\
 rel_reader.exe\
 addROMdata.exe


all: $(files) 
	make clean
	
%.exe:
	pyinstaller $(basename $*)/$(basename $*).py --onefile --noconfirm
	cp dist/$(basename $*).exe $(basename $*).exe
	rm $(basename $*)/__pycache__ -d -rf
	rm $(basename $*).spec


clean:
	rm build -d -rf
	rm dist -d -rf