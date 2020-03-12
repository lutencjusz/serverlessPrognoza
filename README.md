# Instalacja systemu Prognoza na Linuxie
System Prognoza służy do porównania trafności oraz odchylenia prognoz serwisów pogodowych. W tym celu dane z serwisów OpenWeather, Weatherbit, Airly oraz ICM zapisywanie są do *AWS RDS MySQL* za pomocą funkcji *AWS Lambda* oraz *AWS SQS*. Częstotliwość pobierania próbek określana jest za pomocą *CloudWatch Events*. 

1. W katalogu głównym należy utworzyć plik **secret.env**, który powinien się składać z następujących parametrów.

**Uwaga: Dane znajdujące się w pliku są poufne**
```
 ParameterKey=RoleID,ParameterValue=<Rola umo zliwiająca funkcją Lambda dostęp do zasobów>
 ParameterKey=apikeyWeatherbit,ParameterValue=<klucz z Weatherbit>
 ParameterKey=apikeyICM,ParameterValue=<klucz z ICM>
 ParameterKey=apikeyAirly,ParameterValue=<klucz z Airly>
 ParameterKey=apikeyOpenWeather,ParameterValue=<klucz z OpenWeather>
 ParameterKey=dbUsername,ParameterValue=<konto admina bazy danych>
 ParameterKey=dbPassword,ParameterValue=<hasło admina>
```
1. Będąc w katalogu głównym uruchom polecenie:
```shell
./init.sh
```
2. Po pojawieniu się komunikatu z prośbą o poadanie hasła
```
CREATE_COMPLETE                                           AWS::Lambda::EventSourceMapping                           prognozapodlewaniaorkiestracjaUpdateSQLSQSUpdate          -                                                       
CREATE_COMPLETE                                           AWS::CloudFormation::Stack                                PROGNOZA3                                                 -                                                       
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Successfully created/updated stack - PROGNOZA3 in us-east-1

Enter password:
```
wprowadź hasło dla użytkonika bazy danych: admin

To wszystko... System zacznie automatycznie gromadzić dane z wybranych serwisów, które będą dostępne za pomocą fron-end systemu czasu rzeczywistego np. Grafana. 
