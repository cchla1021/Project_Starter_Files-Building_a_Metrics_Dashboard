#export namespace=observability
export namespace=default
kubectl apply -n ${namespace} -f jaeger-tracing/jaeger.yaml

kubectl get  -n ${namespace} pods,svc
#kubectl get -n ${namespace} ingress -o yaml | tail 
#kubectl port-forward -n ${namespace} $(kubectl get pods -n ${namespace} -l=app="jaeger" -o name) --address 0.0.0.0 16686:16686
#kubectl port-forward -n observability $(kubectl get pods -n observability -l=app="jaeger" -o name) --address 0.0.0.0 16686:16686
