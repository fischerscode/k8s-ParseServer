#/bin/bash
kubectl create configmap parse-dashboard-config --from-file=dashboard.json
kubectl create configmap parse-config --from-env-file=server.env
