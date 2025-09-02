helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

helm install stack prometheus-community/kube-prometheus-stack -f .\prometheus.yaml

kubectl port-forward service/prometheus-operated 9090
kubectl port-forward service/stack-grafana 9000:80 (admin / prom-operator)
