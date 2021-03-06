USE DBPrognozaPodlewania;

CREATE TABLE prognozaWeatherbit (
  timestamp timestamp NULL DEFAULT NULL,
  data timestamp NULL DEFAULT NULL,
  temp decimal(10,2) DEFAULT NULL,
  id varchar(100) COLLATE utf8_polish_ci NOT NULL,
  cisnienie decimal(10,0) DEFAULT NULL,
  opis varchar(100) COLLATE utf8_polish_ci DEFAULT NULL,
  temp_odcz decimal(10,2) DEFAULT NULL,
  uv decimal(10,2) DEFAULT NULL,
  widocznosc decimal(10,2) DEFAULT NULL,
  pora_dnia varchar(2) COLLATE utf8_polish_ci DEFAULT NULL,
  opady decimal(10,2) DEFAULT NULL,
  opady_prawd int(11) DEFAULT NULL,
  predkosc_wiatru decimal(10,2) DEFAULT NULL,
  zachmurzenie int(11) DEFAULT NULL,
  wilgotnosc int(11) DEFAULT NULL,
  waga decimal(10,6) DEFAULT NULL,
  dataUtworzenia timestamp NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE prognozaPodlewaniaDB (
  id varchar(255) COLLATE utf8_polish_ci NOT NULL,
  naglowek varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  dataUtworzenia timestamp NULL DEFAULT NULL,
  komentarz varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  zachmurzenie int(4) DEFAULT NULL,
  opis varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  data timestamp NULL DEFAULT NULL,
  waga decimal(10,6) DEFAULT NULL,
  temp decimal(10,2) DEFAULT NULL,
  temp_odcz decimal(10,2) DEFAULT NULL,
  wilgotnosc int(11) DEFAULT NULL,
  predkosc_wiatru decimal(10,2) DEFAULT NULL,
  cisnienie int(11) DEFAULT NULL,
  uruchomic tinyint(1) DEFAULT NULL,
  PM1 decimal(6,2) DEFAULT NULL,
  PM10 decimal(6,2) DEFAULT NULL,
  PM25 decimal(6,2) DEFAULT NULL,
  PRESSURE decimal(10,2) DEFAULT NULL,
  HUMIDITY decimal(6,2) DEFAULT NULL,
  TEMPERATURE decimal(6,2) DEFAULT NULL,
  AIRQUALITYADVICE varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  COLORCODE varchar(8) COLLATE utf8_polish_ci DEFAULT NULL,
  LEVEL varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  TEMPERATURE_ICM decimal(6,2) DEFAULT NULL,
  cZP_temp tinyint(1) DEFAULT NULL,
  cZP_temp_odcz tinyint(1) DEFAULT NULL,
  temp_weatherbit decimal(10,2) DEFAULT NULL,
  temp_odcz_weatherbit decimal(10,2) DEFAULT NULL,
  cisnienie_weatherbit decimal(10,0) DEFAULT NULL,
  opis_weatherbit varchar(100) COLLATE utf8_polish_ci DEFAULT NULL,
  uv_weatherbit decimal(10,2) DEFAULT NULL,
  widocznosc_weatherbit decimal(10,2) DEFAULT NULL,
  pora_dnia_weatherbit tinyint(1) DEFAULT NULL,
  opady_weatherbit decimal(10,2) DEFAULT NULL,
  opady_prawd_weatherbit decimal(10,2) DEFAULT NULL,
  predkosc_wiatru_weatherbit decimal(10,2) DEFAULT NULL,
  zachmurzenie_weatherbit decimal(6,2) DEFAULT NULL,
  wilgotnosc_weatherbit decimal(6,2) DEFAULT NULL,
  cZP_temp_weatherbit tinyint(1) DEFAULT NULL,
  cZP_temp_odcz_weatherbit tinyint(1) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AVG_ROW_LENGTH=292;

CREATE TABLE pognozaICM (
  timestamp timestamp NULL DEFAULT NULL,
  data timestamp NULL DEFAULT NULL,
  temp decimal(10,2) DEFAULT NULL,
  waga decimal(10,6) DEFAULT NULL,
  id varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  dataUtworzenia timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;


CREATE TABLE prognozaAirly (
  data timestamp NULL DEFAULT '0000-00-00 00:00:00',
  dataUtworzenia timestamp NULL DEFAULT '0000-00-00 00:00:00',
  waga decimal(10,6) DEFAULT NULL,
  PM1 decimal(6,2) DEFAULT NULL,
  PM25 decimal(6,2) DEFAULT NULL,
  PM10 decimal(6,2) DEFAULT NULL,
  PRESSURE decimal(10,2) DEFAULT NULL,
  HUMIDITY decimal(6,2) DEFAULT NULL,
  TEMPERATURE decimal(6,2) DEFAULT NULL,
  AIRQUALITYADVICE varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  COLORCODE varchar(11) COLLATE utf8_polish_ci DEFAULT NULL,
  LEVEL varchar(11) COLLATE utf8_polish_ci DEFAULT NULL,
  id varchar(255) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

