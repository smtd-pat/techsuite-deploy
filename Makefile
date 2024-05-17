#################################################

##Help - Show this help menu
help: 
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

##  clean - Clean up temporary working directories
clean:
	rm -f techsuite-deploy*.pkg
	cd ./deploy-control-room && make clean
	cd ./deploy-davis && make clean
	cd ./deploy-edit-rooms && make clean
	cd ./deploy-mtl && make clean
	rm -f profiles.zip
	rm -f ./all/pkgroot/Library/Admin\ Tools/version.txt

##  pkg - Create a package using pkgbuild
pkg: clean
	cat ./version > ./all/pkgroot/Library/Admin\ Tools/version.txt
	cd ./deploy-control-room && make pkg && mv ./techsuite-deploy*.pkg ../
	cd ./deploy-davis && make pkg && mv ./techsuite-deploy*.pkg ../
	cd ./deploy-edit-rooms && make pkg && mv ./techsuite-deploy*.pkg ../
	cd ./deploy-mtl && make pkg && mv ./techsuite-deploy*.pkg ../
	zip -r profiles.zip profiles
