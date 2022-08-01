CREATE DATABASE IF NOT EXISTS prueba;

USE prueba;

CREATE TABLE IF NOT EXISTS estado (
    estadoID        int             NOT NULL AUTO_INCREMENT,
    servidor_1      VARCHAR(16)     NOT NULL,
    servidor_2      VARCHAR(16)     NOT NULL,
    fecha           datetime        default now(),
    PRIMARY KEY (estadoID)
    
);
