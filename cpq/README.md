# CPQ Helm Charts

Helm is widely known as the package manager for Kubernetes. Its original goal was to provide users with a better way to manage all the Kubernetes YAML configuration files that are created in a Kubernetes project. To solve this goal, Helm Charts was created.

## Prerequisites

You need to have a basic understanding and the following technologies installed

- [Kubernetes](https://kubernetes.io/)
- [Helm](https://helm.sh/)


## Usage

### Configuration Updates

Before you deploy CPQ into Kubernetes using Helm. You first need to update a couple of things within the templates/server.configmap.yaml file.

You'll need to update the Catalog Services configuration to either point it to the QA version or to your local installation. If you're going to use your local installation, then you'll need the IP address of your host machine.

Also, you'll need to update the MongoDb configuration to either point to your local installation using your host machine's IP address. Or you can enable MongoDb in the values.yaml file under *mongodb.enable* and change the server configuration value to point at the mongodb service, which is also configured in the values.yaml file under *mongodb.service.name*

### Updating the values in the values.yaml file

There are a couple of things that you will need to update in the values.yaml configuration, which are mentioned below.

1) Client image - You probably don't need to update the image repo but you'll probably need to update the version to install, which can be found under *client.deployment.image.tag*
2) Server image - You probably don't need to update the image repo but you'll probably need to update the version to install, which can be found under the *server.deployment.image.tag*
3) Plugins location on host machine - You need to update where the server plugins are located on your host machine. This configuration value can be found under *server.plugins.hostPath*

### Deploying CPQ

Once, you've updated that configuration all that is left to do is to deploy CPQ using Helm. Make sure you're at the root of the build-scripts directory and run the following command:

```bash
$ helm install cpq-chart kubernetes/ --values kubernetes/values.yaml
```

When the command has finished and you've configured everything correctly, you should have a successful deployment of CPQ installed in your local installation of Kubernetes

