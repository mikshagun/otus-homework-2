###### Установка prometheus-postgres-exporter + service-monitor
helm install postgres-exporter prometheus-community/prometheus-postgres-exporter -f .\prometheus-postgres-exporter.yaml
kubectl apply -f .\postgres-exporter-monitor.yaml

kubectl port-forward service/prometheus-operated 9090
kubectl port-forward service/stack-grafana 9000:80 (admin / prom-operator)
