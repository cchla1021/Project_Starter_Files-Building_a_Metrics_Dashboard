kubectl patch svc "prometheus-grafana" --namespace "monitoring" -p '{"spec": {"type": "LoadBalancer"}}'
kubectl --namespace monitoring port-forward svc/prometheus-grafana --address 0.0.0.0 3000:80
