vault server -dev

UNSEAL_KEY='secret'
export VAULT_ADDR='http://127.0.0.1:8200' && export VAULT_TOKEN="secret"

vault login "$VAULT_TOKEN"

vault status

vault kv -help
vault kv put -help
vault kv put secret/hello foo=world
vault kv put secret/hello foo=world exited=yes
vault kv get secret/hello
vault kv get -format=json secret/hello | jq -r '.data.data.exited'
vault kv delete secret/hello
vault kv get secret/hello
vault kv undelete -versions=2 secret/hello
vault kv get secret/hello
vault kv destroy -versions=2 secret/hello
vault kv get secret/hello
