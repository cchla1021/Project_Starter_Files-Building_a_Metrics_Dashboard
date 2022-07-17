export namespace=observability
ingress_name=$(kubectl get -n ${namespace} ingress -o jsonpath='{.items[0].metadata.name}'); \
ingress_port=$(kubectl get -n ${namespace} ingress -o jsonpath='{.items[0].spec.defaultBackend.service.port.number}'); \
echo -e "\n\n${ingress_name}.${namespace}.svc.cluster.local:${ingress_port}"

