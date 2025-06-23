Project Overview
-----------------
This project demonstrates the creation of a fully automated CI/CD pipeline using Jenkins to build, secure, and deploy a Java-based web application. It integrates various security scanning tools throughout the development lifecycle to ensure a robust and secure deployment.

Key Features
----------------
Automated retrieval of source code from GitHub at the start of each pipeline execution.
Compilation of Java source code using Maven to detect syntax errors.
Execution of unit test cases (if present in the application).
Comprehensive static code analysis for bugs, vulnerabilities, and code smells using SonarQube.
Scanning of source code for known vulnerabilities with OWASP Dependency Check.
Packaging of the Java application into a JAR artifact using Maven.
Automated deployment of the application within a Docker container.
Integration of security checks at multiple stages to enforce DevSecOps principles.


Technologies Used
------------------
Jenkins: The primary CI/CD automation server, orchestrating the entire pipeline from code retrieval to deployment.
GitHub: Version control system for source code management and central repository for the application code.
Java: The core programming language for the web application (JDK 17).
Apache Maven: Build automation tool used for compiling, testing, packaging the Java application, and managing dependencies.
SonarQube: Static Application Security Testing (SAST) tool integrated into the pipeline for code quality and vulnerability analysis.
OWASP Dependency Check: Security analysis tool to identify known vulnerabilities in project dependencies.
Shell Scripting: Used within Jenkins pipeline stages for executing commands.
Groovy: The language used for writing the Jenkins Pipeline (Jenkinsfile).

Architecture / Workflow
--------------------------------------------
The pipeline is designed to automate the software delivery lifecycle with integrated security.

Pipeline Initiation & Git Checkout: The Jenkins pipeline is manually triggered. As its first step, it fetches the latest source code from the GitHub repository into the Jenkins workspace.
Code Compile: The Java source code is compiled using Maven to identify and resolve any syntax errors.
Run Test Cases: Unit tests (if implemented) are executed to ensure code functionality and detect regressions.
SonarQube Analysis: Static code analysis is performed by SonarQube to assess code quality, identify bugs, code smells, and vulnerabilities, generating a detailed report.
OWASP Dependency Check: A security scan is run on the project dependencies to identify any known common vulnerabilities.
Maven Build & Package: Maven builds and packages the application, creating a deployable JAR file.
Application Deployment: The Docker image is deployed as a container, making the Java web application accessible.
