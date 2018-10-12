#!/bin/bash
#
# Script to deploy my docker containers
#
#
# Deploy Hasicorp Vault container:
docker run --cap-add=IPC_LOCK -e 'VAULT_LOCAL_CONFIG={"backend": {"file": {"path": "/vault/file"}}, "default_lease_ttl": "168h", "max_lease_ttl": "720h"}' vault server
#
#