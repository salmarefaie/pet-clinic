#!/bin/bash

# edit PetClinicApplication
sed -i '/import org.springframework.web.servlet.i18n.SessionLocaleResolver;/a import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;' spring-petclinic/src/main/java/org/springframework/samples/petclinic/PetClinicApplication.java
sed -i 's/public class PetClinicApplication {/public class PetClinicApplication extends SpringBootServletInitializer {/' spring-petclinic/src/main/java/org/springframework/samples/petclinic/PetClinicApplication.java

# edit pom.xml
sed -i '/<\/parent>/a <packaging>war<\/packaging>' spring-petclinic/pom.xml
sed -i '0,/<\/dependencies>/s#</dependencies>#<dependency>\n    <groupId>org.springframework.boot</groupId>\n    <artifactId>spring-boot-starter-tomcat</artifactId>\n    <scope>provided</scope>\n</dependency></dependencies>#' spring-petclinic/pom.xml

./mvnw spring-javaformat:apply
./mvnw clean package