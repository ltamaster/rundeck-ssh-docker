# Rundeck - SSH Nodes

Rundeck environment with X ssh nodes

## Build

```
docker-compose  build
```

## Start


```
docker-compose up -d --scale ssh=10
```
`--scale ssh=10` set the number of nodes

Rundeck will start on `$RUNDECK_URL`
## Stop


```
docker-compose down
```