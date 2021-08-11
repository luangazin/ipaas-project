kubectl apply -f ./namespace.yaml
kubectl apply -f ./ipaas-log-app/service.yaml
kubectl apply -f ./ipaas-log-app/deployment.yaml
kubectl apply -f ./caller-app/deployment.yaml
kubectl apply -f ./metrics.yaml



helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add stable https://kubernetes-charts.storage.googleapis.com/
helm repo update

helm install prometheus prometheus-community/prometheus --namespace ipaas
kubectl expose service prometheus-server --namespace ipaas --type=NodePort --target-port=9090 --name=prometheus-server-np


helm install grafana grafana/grafana --namespace ipaas
kubectl expose service grafana --namespace ipaas --type=NodePort --target-port=3000 --name=grafana-np
kubectl get secret --namespace ipaas grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo