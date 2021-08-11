kubectl apply -f ./caller-app/deployment.yaml
kubectl delete -f ./ipaas-log-app/deployment.yaml
# kubectl delete -f ./ipaas-log-app/properties.yaml
kubectl delete -f ./ipaas-log-app/service.yaml
kubectl delete -f ./metrics.yaml
# kubectl delete -f ./namespace.yaml

