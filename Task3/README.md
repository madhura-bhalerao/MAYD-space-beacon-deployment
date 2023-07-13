To deploy the Helm chart, follow these steps:

1. Package the Helm chart:

    helm package <chart_directory>

    Replace <chart_directory> with the path to the directory containing your Helm chart files.

2. Install the chart:

    helm install <release_name> <chart_name>.tgz

    Replace <release_name> with a name for the release and <chart_name>.tgz with the packaged Helm chart file.

Helm will deploy the Space Beacon application based on the defined configurations.