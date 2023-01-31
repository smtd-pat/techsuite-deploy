PKGTITLE="techsuite-deploy-davis"
PKGVERSION="1.0.0"
PKGID=edu.umich.smtd.techsuite
PROJECT="techsuite-deploy"

#################################################

##Help - Show this help menu
help: 
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

##  clean - Clean up temporary working directories
clean:
	rm -rf ./build

##  build - Build file structure for package creation
build: clean
	cp . /build
	rsync -a ../all ./build

##  pkg - Create a package using pkgbuild
pkg: build
	cd ./build
	chmod -R +x ./scripts
	chmod -R 755 ./pkgroot/usr/local/outset
	pkgbuild --root pkgroot --scripts scripts --identifier ${PKGID} --version ${PKGVERSION} --ownership recommended ./${PKGTITLE}-${PKGVERSION}.component.pkg
	productbuild --identifier ${PKGID}.${PKGVERSION} --package ./${PKGTITLE}-${PKGVERSION}.component.pkg ./${PKGTITLE}-${PKGVERSION}.pkg
	rm -f ./${PKGTITLE}-${PKGVERSION}.component.pkg