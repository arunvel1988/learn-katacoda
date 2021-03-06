#!/bin/bash

mkdir -p /root/projects/quarkus 
cd /root/projects/quarkus

mkdir -p /root/.m2
cat > ~/.m2/settings.xml <<-EOF1
<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0
                      https://maven.apache.org/xsd/settings-1.0.0.xsd">
    <localRepository>/root/.m2/repository</localRepository>
    <interactiveMode>false</interactiveMode>
    <profiles>
        <profile>
            <id>jboss-enterprise-maven-repository-ga</id>
            <repositories>
                <repository>
                    <id>jboss-enterprise-maven-repository-ga</id>
                    <url>https://maven.repository.redhat.com/ga/</url>
                    <releases>
                    <enabled>true</enabled>
                    </releases>
                    <snapshots>
                    <enabled>false</enabled>
                    </snapshots>
                </repository>
            </repositories>
            <pluginRepositories>
                <pluginRepository>
                    <id>jboss-enterprise-maven-repository-ga</id>
                    <url>https://maven.repository.redhat.com/ga/</url>
                    <releases>
                    <enabled>true</enabled>
                    </releases>
                    <snapshots>
                    <enabled>false</enabled>
                    </snapshots>
                </pluginRepository>
            </pluginRepositories>
        </profile>
        <profile>
            <id>jboss-enterprise-maven-repository-earlyaccess</id>
            <repositories>
                <repository>
                    <id>jboss-enterprise-maven-repository-ea</id>
                    <url>https://maven.repository.redhat.com/earlyaccess/</url>
                   <releases>
                    <enabled>true</enabled>
                    </releases>
                    <snapshots>
                    <enabled>false</enabled>
                    </snapshots>
                </repository>
            </repositories>
            <pluginRepositories>
                <pluginRepository>
                    <id>jboss-enterprise-maven-repository-ea</id>
                    <url>https://maven.repository.redhat.com/earlyaccess/</url>
                    <releases>
                    <enabled>true</enabled>
                    </releases>
                    <snapshots>
                    <enabled>false</enabled>
                    </snapshots>
                </pluginRepository>
            </pluginRepositories>
        </profile>
    </profiles>
    <activeProfiles>
        <activeProfile>jboss-enterprise-maven-repository-ga</activeProfile>
        <!--<activeProfile>jboss-enterprise-maven-repository-earlyaccess</activeProfile>-->
    </activeProfiles>
</settings>
EOF1

clear
