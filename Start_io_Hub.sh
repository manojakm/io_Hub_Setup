sed -i 's/<RANDOM_HEX>/'"$( openssl rand -hex 32 )"'/g' config.yaml
# Run the config.yaml file to start up JupyterHub: RELEASE=NAMESPACE=jhub, JUPYTER_VERSION=0.7.0
helm upgrade --install jhub jupyterhub/jupyterhub --namespace jhub --version 0.8-ccc1e6b --values config.yaml

