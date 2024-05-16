# mtx
The MTX program controls the robotic mechanism in autoloaders and tape libraries. Taken from Sourceforge, patches from centOS were applied, plus my changes to allow to use mtx over library calls.

# Building an el8 RPM

    - check out this repo: git clone https://github.com/Enstore-org/mtx.git
    - cd mtx/.github/docker/alma8-build-mtx
    - podman build -t alma8-build-mtx .  #should also work with docker, singularity, or similar 
    - podman run --name build_container alma8-build-mtx /data/build_enstore_mtx_rpm.sh #build mtx rpms
    - podman cp build_container:/root/rpmbuild/RPMS/x86_64/mtx-1.3.12-18fnal.el8.x86_64.rpm . #copy mtx rpm from container to local file system
    - other rpms are built and can be copied out, see the end of output from the podman run command
