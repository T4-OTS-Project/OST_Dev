# team4-project
team 4 project 

### Steps to release an application


#### Create helm chart 
```
helm create application 
```

#### Update image information 
#### Change values.yaml
```
image:
  repository: us-central1-docker.pkg.dev/terraform-project-daria/team4/ots
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  tag: "2.0.0"

```
#### Add SSL certificate + ingress
```

ingress:
  enabled: true
  className: "nginx"
  annotations: 
    cert-manager.io/cluster-issuer: letsencrypt-prod
  hosts:
    - host: application.darimco.com
      paths:
        - path: /
          pathType: ImplementationSpecific
  tls: 
  - secretName: chart-example-tls
    hosts:
      - application.darimco.com
```

#### Deploy application 
```
helm install ots  ./application/
```

### Verify
```
helm list 
````



