Setup:
1. Create ns `kubectl create ns NAMESPACENAME`
2. Use NS `kubens NAMESPACENAME`
3. modify ```server.env```

   modify ```dashboard.json```
   
   modify ```mongo.yaml```
4. ```kubectl apply -f mongo.yaml```
5. ```kubectl exec -ti MONGODB_POD_NAME -- /bin/bash```
6. ```mongo```
7. ```use ParseDB
   
   db.createUser({
     user: "parse",
     pwd: "MONGODB_PASSWORD_FROM_SERVER.ENV",
     roles: [{role: "dbAdmin", db: "ParseDB"},{role: "readWrite", db: "ParseDB"}]})
     
   exit
   exit
   ```
8. ```chmod +x generatecm.sh```
9. ```./generatecm.sh```
10. ```kubectl apply -f server.yaml -f dashboard.yaml```
11. Configure your reverse proxy or change the services to use an external ip.

Note for FNS file storage:
https://docs.mongodb.com/manual/administration/production-notes/#remote-filesystems
