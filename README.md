# Generic exporter chart

Because you don't need unique Helm chart for every prometheus exporter.


## How to use

- Add helm repo
```shell
helm repo add rkosegi https://rkosegi.github.io/helm-charts/ --force-update
```

- Install
```shell
helm install myexp rkosegi/generic-exporter --set image.name=myexporter:1.0.0
```

Set [README](chart/README.md) for values that you can set.
