
# Anypoint Template: API Led Connectivity System API for Database

+ [License Agreement](#licenseagreement)
+ [Use Case](#usecase)
+ [Considerations](#considerations)
+ [Run it!](#runit)
	* [Running on premise](#runonopremise)
	* [Running on Studio](#runonstudio)
	* [Running on Mule ESB stand alone](#runonmuleesbstandalone)
	* [Running on CloudHub](#runoncloudhub)
	* [Deploying your Anypoint Template on CloudHub](#deployingyouranypointtemplateoncloudhub)
	* [Properties to be configured (With examples)](#propertiestobeconfigured)
+ [Customize It!](#customizeit)
	* [system-api.xml](#systemapidb)



# License Agreement <a name="licenseagreement"/>
Note that using this template is subject to the conditions of this [License Agreement](AnypointTemplateLicense.pdf).
Please review the terms of the license before downloading and using this template. In short, you are allowed to use the template for free with Mule ESB Enterprise Edition, CloudHub, or as a trial in Anypoint Studio.

# Use Case <a name="usecase"/>
This Anypoint Template should serve as a foundation for API Led Connectivity approach of running an enterprise.
The template is a System API to underlying Database.

This Anypoint Template is a REST API implemented using APIkit and RAML definition. The basic CRUD operations are implemented for Account object. The API uses JSON as an exchange format. Included are example requests and responses.

Below are the endpoints that are implemented.

### GET /accounts
Retrieves accounts from Database based on the combination of query parameters. At least one of `modifiedAfter` or `name` should be set to retrieve results. Look at the included RAML definition to learn more about the implemented query parameters.

### POST /accounts
Inserts new Account to Database

### GET /accounts/{id}
Retrieves an Account based on the given native identifier used in the Database.

### PUT /accounts/{id}
Updates an Account with the data in the HTTP request. All fields are overwritten.

### DELETE /accounts/{id}
Deletes specific Account based on the given native identifier used in the Database.


Look at the included self-descriptive RAML definition and the corresponding flows to learn more about the application.

# Considerations <a name="considerations"/>

To make this Anypoint Template run, there are certain preconditions that must be considered. All of them deal with the preparations, that must be made in order for all to run smoothly.
**Failing to do so could lead to unexpected behavior of the template.**

This particular Anypoint Template requires a Database instance to work.
The Anypoint Template comes packaged with a SQL script to create the Database table that it uses. It is the user responsability to use that script to create the table in an available schema and change the configuration accordingly. The SQL script file can be found in [src/test/resources/db_ddl_script.sql](../master/src/test/resources/db_ddl_script.sql)


# Run it! <a name="runit"/>
Simple steps to get API Led Connectivity System API for Database running.


## Running on premise <a name="runonopremise"/>
In this section we detail the way you should run your Anypoint Template on your computer.


### Where to Download Mule Studio and Mule ESB
First thing to know if you are a newcomer to Mule is where to get the tools.

+ You can download Mule Studio from this [Location](http://www.mulesoft.com/platform/mule-studio)
+ You can download Mule ESB from this [Location](http://www.mulesoft.com/platform/soa/mule-esb-open-source-esb)


### Importing an Anypoint Template into Studio
Mule Studio offers several ways to import a project into the workspace, for instance:

+ Anypoint Studio generated Deployable Archive (.jar)
+ Anypoint Studio Project from External Location

### Running on Studio <a name="runonstudio"/>
Once you have imported you Anypoint Template into Anypoint Studio you need to follow these steps to run it:

+ Locate the properties file `mule.dev.properties`, in src/main/resources
+ Fill out all the properties required as per the examples in the section [Properties to be configured](#propertiestobeconfigured)
+ Add dependency for your Database driver to the pom.xml
+ Configure Database Connector in Global Elements section of the flow to use your database specific driver. Driver class name needs to be supplied here.
+ Once that is done, right click on you Anypoint Template project folder
+ Hover you mouse over `"Run as"`
+ Click on  `"Mule Application"`


### Running on Mule ESB stand alone <a name="runonmuleesbstandalone"/>
Complete all properties in one of the property files, for example in [mule.prod.properties](../master/src/main/resources/mule.prod.properties) and run your app with the corresponding environment variable to use it. To follow the example, this will be `mule.env=prod`.


## Running on CloudHub <a name="runoncloudhub"/>
While [creating your application on CloudHub](http://www.mulesoft.org/documentation/display/current/Hello+World+on+CloudHub) (Or you can do it later as a next step), you need to go to Deployment > Advanced to set all environment variables detailed in **Properties to be configured** as well as the **mule.env**.


### Deploying your Anypoint Template on CloudHub <a name="deployingyouranypointtemplateoncloudhub"/>
Mule Studio provides you with really easy way to deploy your Template directly to CloudHub, for the specific steps to do so please check this [link](http://www.mulesoft.org/documentation/display/current/Deploying+Mule+Applications#DeployingMuleApplications-DeploytoCloudHub)


## Properties to be configured (With examples) <a name="propertiestobeconfigured"/>
In order to use this Mule Anypoint Template you need to configure properties (Credentials, configurations, etc.) either in properties file or in CloudHub as Environment Variables. Detail list with examples:

### Application configuration
**Common configuration**

+ http.port `9090`

**Database Connector configuration**

+ db.host `localhost`
+ db.port `3306`
+ db.user `joan.baez`
+ db.password `JoanBaez456`
+ db.databasename `template-apiled-system-account-db`

**API configuration**

+ api.domain `your-db-api.cloudhub.io`
+ api.basePath `/api`


# Customize It!<a name="customizeit"/>
This brief guide intends to give a high level idea of how this Anypoint Template is built and how you can change it according to your needs.
As mule applications are based on XML files, this page will be organized by describing all the XML that conform the Anypoint Template.
Of course more files will be found such as Test Classes and [Mule Application Files](http://www.mulesoft.org/documentation/display/current/Application+Format), but to keep it simple we will focus on the XMLs.

Here is a list of the main XML files you'll find in this application:

* [system-api.xml](#systemapidb)

## system-api.xml<a name="systemapidb"/>

A functional aspect of this Anypoint Template implemented in this XML is to create or update objects in the system for a represented use case. You can customize and extend the logic of this Anypoint Template in this XML to more specifically meet your needs.

Configuration for Connectors and [Properties Place Holders](http://www.mulesoft.org/documentation/display/current/Configuring+Properties) are also set in this file. **Even though you can change the Connector configuration in the XML file, all parameters that can be modified here are in properties file, and this is the recommended place to do it.**
In the visual editor they can be found on the *Global Element* tab.
