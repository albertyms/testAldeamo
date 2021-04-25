+ **With Docker:** 
    + Compiler component with maven, run the command: mvn clean install -DskipTests
    + Run the command: docker-compose up --build (Docker must be installed).

+ **Springboot/Maven:**
    + NOTE: To run with this option it is necessary to have a PostgreSQL database with a database called "testAldeamo" and change the connection string to the database in the application.properties file so that the scripts can be executed table creation.
    + Compile the project with the command: mvn clean install
    + Move to the root folder of the project: cd C:\Users\user\aldeamoTest\target
    + Run the following command: mvn spring-boot:run

Enpoint to consume service:

Type: GET localhost:8081/api/processIterator/{idRecord}/{iterator}

Response:
```json
{
    "response": [
                    8,
                    6,
                    4,
                    2,
                    5,
                    7
                ]
}
```