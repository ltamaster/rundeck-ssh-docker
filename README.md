#Rundeck - SSH Nodes

Rundeck environment with X ssh nodes

## Build

```
docker-compose  buils
```

## Start


```
docker-compose up -d --scale ssh=10
```
`--scale ssh=10` set the number of nodes

## Stop


```
docker-compose down
```