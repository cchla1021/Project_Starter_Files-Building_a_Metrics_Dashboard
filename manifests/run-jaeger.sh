export namespace=observability
kubectl apply -n ${namespace} -f jaeger-tracing/jaeger.yaml 
#kubectl port-forward -n ${namespace} $(kubectl get pods -n ${namespace} -l=app="jaeger" -o name) --address 0.0.0.0 16686:16686
#kubectl port-forward -n observability $(kubectl get pods -n observability -l=app="jaeger" -o name) --address 0.0.0.0 16686:16686
