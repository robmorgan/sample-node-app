# Sample Node App

This folder contains a Dockerized Node.js app that is meant to be used for demonstration
purposes only. You should follow the example in this code in your own apps and
then remove this sample app once things are working.

The app responds with a simple _"Hello World!"_.

## Running the app in local development

The provided Docker Compose file allows you to run the app locally in development. To start the container, run:

```
$ docker-compose up
```

Alternatively, you can start the server directly without Docker by running `npm start`:

```
$ npm start

Running on http://0.0.0.0:80
```

Once the stack has launched, you can test the application by navigating to:

- http://localhost:8080/ to access the "Hello World!" message.

## Executing the Tests

Simply run:

```
$ npm run test
```

## Building and pushing the Docker image to Container Registry

1. Configure Docker to use [`gcloud`][gcloud_install_docs] as a credential helper.
   Your Docker client version must be 1.13 or newer.

```
gcloud auth configure-docker
```

2. Build and tag your image.

```
docker build -t [GCP-CONTAINER-REGISTRY-HOSTNAME]/[PROJECT-ID]/sample-node-app .
```

3. Push the Docker image

```
docker push [GCP-CONTAINER-REGISTRY-HOSTNAME]/[PROJECT-ID]/sample-node-app
```

The Container Registry hostname will vary according to your region. For more
information, check the [Container Registry docs][cr_docs].

[gcloud_install_docs]: https://cloud.google.com/sdk/docs/
[node_js]: https://nodejs.org
[cr_docs]: https://cloud.google.com/container-registry/docs/pushing-and-pulling
