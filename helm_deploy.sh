# Get Credentials
gcloud container clusters get-credentials "$CLOUDSDK_CONTAINER_CLUSTER" --zone "$CLOUDSDK_COMPUTE_ZONE" --project "$PROJECT_ID"
# Upgrade charts
helm upgrade --install \
    -f "./ingress-nginx/values.yaml" cicd-testing-env \
    ./ingress-nginx --namespace ingress-nginx