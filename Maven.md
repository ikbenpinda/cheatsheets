#Cheatsheets // Maven

###### Force encoding [project>properties]

    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>

###### Set source JDK

    <maven.compiler.source>1.8</maven.compiler.source>
    <maven.compiler.target>1.8</maven.compiler.target>
    
###### Web.xml server compatibility (Glassfish / Tomcat) [project>build>plugins>plugin]
Note: Set <code>\<context-root>/\</context-root></code> in glassfish-web.xml!

	  <groupId>org.apache.maven.plugins</groupId>
	  <artifactId>maven-war-plugin</artifactId>
	  <version>2.3</version>
	  <configuration>
	    <failOnMissingWebXml>false</failOnMissingWebXml>
	  </configuration>
	  
