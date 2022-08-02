CREATE DATABASE IF NOT EXISTS keepAlive;

USE keepAlive;

CREATE TABLE IF NOT EXISTS pruebaestado (
    estadoID        int             NOT NULL AUTO_INCREMENT,
    servidor_1      VARCHAR(16)     NOT NULL,
    servidor_2      VARCHAR(16)     NOT NULL,
    servidor_3      VARCHAR(16)     NOT NULL,
    servidor_4      VARCHAR(16)     NOT NULL,
    servidor_5      VARCHAR(16)     NOT NULL,
    servidor_6      VARCHAR(16)     NOT NULL,
    servidor_7      VARCHAR(16)     NOT NULL,
    servidor_8      VARCHAR(16)     NOT NULL,
    fecha           datetime        default now(),
    PRIMARY KEY (estadoID)
    
);
