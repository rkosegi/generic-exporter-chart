# generic-exporter

![Version: 1.0.2](https://img.shields.io/badge/Version-1.0.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v1.0.2](https://img.shields.io/badge/AppVersion-v1.0.2-informational?style=flat-square)

Generic Prometheus exporter chart

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Richard Kosegi | <richard.kosegi@gmail.com> | <https://github.com/rkosegi> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Pod's scheduling constraints. |
| arguments | list | `[]` | exported arguments |
| command | list | `[]` | exporter entry point |
| config.confidential | bool | `true` | When true, resource as embedded into Secret, instead of ConfigMap |
| config.data | object | `{}` | Actual config files content |
| config.enabled | bool | `false` | Whether to create resource with config files |
| config.mountPath | string | `"/config"` | Path on the file system where configuration files are mounted onto |
| containerPort | int | `9000` | Port that exporter is listening on. Also used for probes (if enabled) |
| extraMounts | string | `nil` | extra mount points to use in pod, should be aligned with extraVolumes |
| extraObjects | list | `[]` | extra objects to create |
| extraVolumes | list | `[]` | extra volumes to use in pod, should be aligned with extraMounts |
| fullnameOverride | string | `""` |  |
| image.name | string | `""` | Container image name and version. Must be defined. |
| image.pullPolicy | string | `"Always"` | When to pull image. |
| imagePullSecrets | list | `[]` | List of pull secrets |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` | Node selector that could restrict placement of pods |
| podAnnotations | object | `{}` | annotations to put on pod |
| podSecurityContext | object | `{"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsNonRoot":true}` | SecurityContext to put on pod |
| probe.enabled | bool | `true` | When true, then probes are configured on container |
| probe.path | string | `"/healthz"` | HTTP context path that handles probe requests |
| replicaCount | int | `1` | Number of replicas |
| resources | object | `{"limits":{"cpu":"100m","memory":"128Mi"},"requests":{"cpu":"50m","memory":"64Mi"}}` | Container resources |
| securityContext | object | `{}` | Additional security context to put on container |
| service.port | int | `80` | Service port |
| service.targetPort | string | `"metrics"` | Name of target port. Used to match endpoint in service monitor and definition in service. |
| service.type | string | `"ClusterIP"` | Type of service |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `false` | Specifies whether a service account should be created |
| serviceAccount.name | string | `"default"` | If not set and create is true, a name is generated using the fullname template |
| serviceMonitor.enabled | bool | `true` | Whether servicemonitor resource should be created |
| serviceMonitor.endpoints | list | `[{"interval":"30s","port":"{{ .Values.service.targetPort }}"}]` | Endpoint configuration |
| tolerations | list | `[]` | Pod's tolerations. |

