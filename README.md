# Generic exporter chart

A simple helm chart that can be used to install any prometheus exporter.

## Configuration

The following table lists the configurable parameters of the Generic-prometheus-exporter chart and their default values.

| Parameter                                | Description                                         | Default                                    |
|------------------------------------------|-----------------------------------------------------|--------------------------------------------|
| `replicaCount`                           |                                                     | `1`                                        |
| `image.name`                             | Container image name and version                    | `""`                                       |
| `image.pullPolicy`                       |                                                     | `"IfNotPresent"`                           |
| `imagePullSecrets`                       |                                                     | `[]`                                       |
| `nameOverride`                           |                                                     | `""`                                       |
| `fullnameOverride`                       |                                                     | `""`                                       |
| `serviceAccount.create`                  |                                                     | `true`                                     |
| `serviceAccount.annotations`             |                                                     | `{}`                                       |
| `serviceAccount.name`                    |                                                     | `""`                                       |
| `serviceMonitor.enabled`                 | Whether servicemonitor resource should be installed | `true`                                     |
| `serviceMonitor.scrape_config`           | scrape configuration                                | `[{"port": "metrics", "interval": "30s"}]` |
| `podAnnotations`                         |                                                     | `{}`                                       |
| `podSecurityContext`                     |                                                     | `{}`                                       |
| `securityContext.capabilities.drop`      |                                                     | `["ALL"]`                                  |
| `securityContext.readOnlyRootFilesystem` |                                                     | `true`                                     |
| `securityContext.runAsNonRoot`           |                                                     | `true`                                     |
| `service.type`                           |                                                     | `"ClusterIP"`                              |
| `service.port`                           |                                                     | `80`                                       |
| `port`                                   |                                                     | `9000`                                     |
| `resources.limits.cpu`                   |                                                     | `"100m"`                                   |
| `resources.limits.memory`                |                                                     | `"128Mi"`                                  |
| `resources.requests.cpu`                 |                                                     | `"50m"`                                    |
| `resources.requests.memory`              |                                                     | `"64Mi"`                                   |
| `probe.enabled`                          |                                                     | `true`                                     |
| `probe.path`                             |                                                     | `"/healthz"`                               |
| `nodeSelector`                           |                                                     | `{}`                                       |
| `tolerations`                            |                                                     | `[]`                                       |
| `affinity`                               |                                                     | `{}`                                       |
| `config`                                 |                                                     | `{}`                                       |
| `extraMounts`                            | extra mount points to use in pod                    | `null`                                     |
| `extraVolumes`                           | extra volumes to use in pod                         | `null`                                     |
| `extraObjects`                           | extra objects to create                             | `[]`                                       |
| `command`                                | container command                                   | `[]`                                       |
| `arguments`                              | additional arguments                                | `[]`                                       |



