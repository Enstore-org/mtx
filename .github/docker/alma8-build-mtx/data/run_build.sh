#!/bin/sh 
# builds Enstore-mtx rpms and places them in ~/rpmbuild/RPMS/%{arch}
#
rm -rf ~/rpmbuild
for DIR in BUILD  BUILDROOT  RPMS	SOURCES  SPECS	SRPMS; do
    mkdir -p ~/rpmbuild/$DIR
done

git clone https://github.com/Enstore-org/mtx.git 
cd mtx
tar czf ~/rpmbuild/SOURCES/mtx.tgz mtx-1.3.12
cp /data/mtx.spec  ~/rpmbuild/SPECS/mtx.spec
QA_SKIP_BUILD_ROOT=1 rpmbuild -ba --noclean ~/rpmbuild/SPECS/mtx.spec

