apt-get update

apt-get install vagrant

apt-get install virtualbox


######################################################################################


vagrant -v

vagrant box add debian/stretch64

vagrant box list

mkdir entorno > cd entorno > vagrant init debian/stretch64


######################################################################################


vagrant up 
