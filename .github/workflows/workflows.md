# Main Workflow

Releases charts to github pages.

# Digital Ocean Workflow

Deploys released chart to a digital ocean cluster.

### Required variables in GITHUB actions

- `DO_CLUSTER_NAME` - name of the cluster where opengovernance will be installed

### Required secrets in GITHUB actions

- `DIGITALOCEAN_ACCESS_TOKEN` - DigitalOcean [personal access token](https://cloud.digitalocean.com/account/api/tokens)
