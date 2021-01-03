# Alejandro Fernández Trigo

apt-get install snapd

sudo snap install microk8s --classic

export PATH=$PATH:/snap/bin

######################################################################################

microk8s.status

microk8s.enable dns dashboard (otros addons....)

######################################################################################

sudo ufw disable ó sudo ufw allow in on cbr0 && sud ufw allow out on cbr0

######################################################################################

microk8s.kubectl get all --all-namespaces > IP del dashboard > acceder como: https://10.152.183.211:443 

Para acceder desde el navegador: 

1. Configurar proxy: 
    * Firefox > Proxy conf. manual > ProxySOCK 5, host: localhost, puerto: 1080

2. Conectarnos por SSH:
    * hostname -I y hacer SSH desde la consola de Windows a la IP local (192.168.1.x) con ssh -D 1080 root@192.168.1.x

3. Una vez desde la consola de la maquina en el terminal de Windows: 
    * Accedemos a la IP del dashboard (https://10.152.183.211:443) y se presenta una ventana de acceso por token

4. Generamos un token de acceso:
    * microk8s.kubectl -n default get secret (genera un token con nomenclatura default-token-xxxxx)
    * microk8s.kubectl -n default describe secrets default-token-xxxxx
    * Copiamos el token (1099 bytes)

5. Pegar el token en el navegador y acceder

######################################################################################

Grafana: microk8s.kubectl cluster-info > obtiene las IPs de los servicios alojados en Kubernetes

Accedemos a: https://127.0.0.1:16443/api/v1/namespaces/kube-system/services/monitoring-grafana/proxy pero sustituyendo la IP 
por la IP que obtuvimos previamente (192.168.1.x)

Para entrar necesitamos credenciales que se obtienen de: microk8s.config > consultar el apartado de users: username + password

######################################################################################

Alojar un servicio en Kubernetes: microk8s.kubectl run tjf-nginx --image=nginx:alpine --replicas=2 --port=80 (OJO que replicas esta deprecated
y es posible que sea necesario ejecutar el comando sin el parametro de replicas pero hacerlo dos veces)

Comprobar los pods en ejecución: microk8s.kubectl get pod (deberia mostrar sus nombres y estado igual que en el dashboard)

Obtener información de un pod concreto: microk8s.kubectl describe pods nombre_del_pod

######################################################################################

Exponer un servicio a un puerto: microk8s.kubectl expose deployment nombre_del_pod --type=NodePort --name=ejemplo

Acceder al servicio: IP + puerto: microk8s.kubectl get service (ó microk8s.kubectl get svc)

Acceder al navegador Lynx en modo texto pasandole como parametro la IP + puerto: lynx http://10.152.183.195:80 (puerto especificado antes)

(Tambien puede hacerse desde el navegador del host ya que esta configurado el proxy)

######################################################################################