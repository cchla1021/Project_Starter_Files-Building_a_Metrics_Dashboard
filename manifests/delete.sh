kubectl delete -f app/
kubectl delete -n default deployments backend
kubectl delete pod --all -n default
kubectl delete -n observability -f jaeger-tracing/jaeger.yaml

