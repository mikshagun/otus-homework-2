###### Установка prometheus + grafana
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install stack prometheus-community/kube-prometheus-stack -f .\prometheus.yaml

###### Установка БД
helm install my-postgres oci://registry-1.docker.io/bitnamicharts/postgresql (подождать пока запустится БД)

###### Установка сервиса
5. helm install user-service .