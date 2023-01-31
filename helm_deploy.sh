# Get Credentials
gcloud container clusters get-credentials "$CLOUDSDK_CONTAINER_CLUSTER" --zone "$CLOUDSDK_COMPUTE_ZONE" --project "$PROJECT_ID"
# Upgrade charts
helm upgrade -f "./ingress-nginx/values.yaml" nginx \
    ./ingress-nginx --install --namespace ingress-nginx --create-namespace
helm upgrade -f "./cicd-testing-charts/values.yaml" cicd-testing-vue \
    ./cicd-testing-charts -- install