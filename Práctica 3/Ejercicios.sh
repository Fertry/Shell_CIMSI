# Alejandro Fernández Trigo

apt-get update

apt-get install vagrant

apt-get install virtualbox

######################################################################################

vagrant -v

vagrant box add debian/stretch64

vagrant box list

mkdir entorno > cd entorno > vagrant init debian/stretch64

######################################################################################

vagrant up > vagrant ssh nombre_de_la_maquina > logout

vagrant halt ó vagrant destroy 

######################################################################################

    # vi: set ft=ruby :

    Vagrant.configure("2") do |config|

    config.vm.define :nodo1 do |nodo1|
        nodo1.vm.box = "debian/stretch64"
        nodo1.vm.hostname = "nodo1"
        nodo1.vm.network :private_network, ip: "10.1.1.101"
    end
    config.vm.define :nodo2 do |nodo2|
        nodo2.vm.box = "debian/stretch64"
        nodo2.vm.hostname = "nodo2"
        nodo2.vm.network :private_network, ip: "10.1.1.102"
    end
    end

######################################################################################

vagrant up > vagrant ssh nodo1 > ping IP_nodo2

######################################################################################