# cas-affine
custom deployment of affine on openshift for the Clean Growth Digital Services Team


## Deploy
1) build the image - there is no GH action build at this time
2) update the values.yaml with the image tag and `helm install` the "cas-whiteboard" chart


## Test locally
`docker compose up`