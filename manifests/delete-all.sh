kubectl delete -f app/backend.yaml --force
kubectl delete -f app/frontend.yaml --force
kubectl delete -n default deployments backend
kubectl delete pod --all -n default
kubectl delete -n observability -f jaeger-tracing/jaeger.yaml

# kubectl delete pod $(kubectl get pods | awk '{print $1}') --force
