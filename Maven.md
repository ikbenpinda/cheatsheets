### Cheatsheets // Maven

###### Install dependencies
Note: -U forces update.
```sh
    mvn clean install -U
```

###### Force encoding [project>properties]
```xml
    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
```
###### Set source JDK
```xml
    <maven.compiler.source>1.8</maven.compiler.source>
    <maven.compiler.target>1.8</maven.compiler.target>
``` 
###### Web.xml server compatibility (Glassfish / Tomcat) [project>build>plugins>plugin]
Note: Set <code>\<context-root>/\</context-root></code> in glassfish-web.xml!
```xml
	  <groupId>org.apache.maven.plugins</groupId>
	  <artifactId>maven-war-plugin</artifactId>
	  <version>2.3</version>
	  <configuration>
	    <failOnMissingWebXml>false</failOnMissingWebXml>
	  </configuration>
```	  
