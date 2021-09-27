# Grafana

## Creating the Network

```console
$ docker network create --subnet=172.50.50.0/16 devnetwork
```

## Initial Password

```json
{
    'user': 'admin',
    'pass': 'admin'
}
```

- No primeiro acesso será solicitada a troca de senha

## Configurations Embedding on

```conf
#################################### Security ####################################
[security]
...
# set to true if you host Grafana behind HTTPS. default is false.
cookie_secure = true

# set cookie SameSite attribute. defaults to `lax`. can be set to "lax", "strict", "none" and "disabled"
cookie_samesite = none

# set to true if you want to allow browsers to render Grafana in a <frame>, <iframe>, <embed> or <object>. default is false.
allow_embedding = true
...
```

```conf
#################################### Anonymous Auth ######################
[auth.anonymous]
# enable anonymous access
enabled = true

# specify organization name that should be used for unauthenticated users
org_name = fabricio_homeoffice

# specify role for unauthenticated users
org_role = Viewer

# mask the Grafana version number for unauthenticated users
;hide_version = false
```

## Author

* Fabricio Costa fabriciojf@gmail.com
