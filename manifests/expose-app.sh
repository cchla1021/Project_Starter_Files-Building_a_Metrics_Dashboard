kubectl patch svc "fronte end-service" -p '{"spec": {"type": "LoadBalancer"}}'
kubectl port-forward svc/frontend-service 8080:8080
