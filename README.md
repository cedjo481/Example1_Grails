# In order to deploy on heroku from local:
```
grails package
```
OR
```
./gradlew assemble
```
At root of the project :
add system.properties with :
```
java.runtime.version=11
```
add Procfile with web:

```
java -jar target/mon-application-grails-1.0.0-RC.jar
```

in application.properties :
```
server.port=${PORT:8080}
```
This will use $PORT if it's set, and default to 8080 if it's not.
To deploy :
```
heroku deploy:jar target/mon-application-grails-1.0.0-RC.jar --app mon-application-heroku
```
To see logs :
```
heroku logs --tail --app mon-application-heroku
```

//verifier l'importance de doker
