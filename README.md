 # Instalation of Forecast on Linux [->PL](./READMEpl.md)
The Forecast system is used to compare the accuracy and deviation of weather forecasts. For this purpose, data from OpenWeather, Weatherbit, Airly and ICM services are saved to *AWS RDS MySQL* using the *AWS Lambda* functions and *AWS SQS*. Sampling frequency is determined by *CloudWatch Events*.

1. The ```secret.env``` file have to be create in the main directory, which should consist of following parameters

**Attention: The data contained in the file is confidential**
```
 ParameterKey=RoleID,ParameterValue=<Rola umo zliwiająca funkcją Lambda dostęp do zasobów>
 ParameterKey=apikeyWeatherbit,ParameterValue=<klucz z Weatherbit>
 ParameterKey=apikeyICM,ParameterValue=<klucz z ICM>
 ParameterKey=apikeyAirly,ParameterValue=<klucz z Airly>
 ParameterKey=apikeyOpenWeather,ParameterValue=<klucz z OpenWeather>
 ParameterKey=dbUsername,ParameterValue=<konto admina bazy danych>
 ParameterKey=dbPassword,ParameterValue=<hasło admina>
```
1. Once, from the root directory, invoke the command:
```shell
./init.sh
```
2. When a message *Enter password* appears, write admin password:
```
CREATE_COMPLETE                                           AWS::Lambda::EventSourceMapping                           prognozapodlewaniaorkiestracjaUpdateSQLSQSUpdate          -                                                       
CREATE_COMPLETE                                           AWS::CloudFormation::Stack                                PROGNOZA3                                                 -                                                       
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Successfully created/updated stack - PROGNOZA3 in us-east-1

Enter password:
```

That's all ... The system automatically should start collect data from selected services that will be available via the front-end real-time system, e.g. Grafana.