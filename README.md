

If you do not already have a Docker credentials file for the secured registry, you can create a secret by running:

$ oc create secret docker-registry <pull_secret_name> \
    --docker-server=<registry_server> \
    --docker-username=<user_name> \
    --docker-password=<password> \
    --docker-email=<email>

To use a secret for pulling images for pods, you must add the secret to your service account. The name of the service account in this example should match the name of the service account the pod uses. The default service account is default:

$ oc secrets link default <pull_secret_name> --for=pull
