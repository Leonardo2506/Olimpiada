DROP database IF exists olimpiada;

CREATE database olimpiada;

CREATE TABLE olimpiada.Local(  
    Sucursal int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    idPersona INT NOT NULL FOREIGN KEY,
    idRegistro DATETIME NOT NULL FOREIGN KEY,
    idEntrada INT NOT NULL FOREIGN KEY,
    idSalida INT NOT NULL FOREIGN KEY,
    Direccion VARCHAR NOT NULL, 
    CantMax INT NOT NULL, 
    constraint FOREIGN KEY Local_Persona (idPersona) REFERENCES olimpiada.Persona (DNI),
    constraint FOREIGN KEY Local_Registro (idRegistro) REFERENCES olimpiada.Registro (Registro),
    constraint FOREIGN KEY Local_Entrada (idEntrada) REFERENCES olimpiada.Entrada (Entrada),
    constraint FOREIGN KEY Local_Salida (idSalida) REFERENCES olimpiada.Salida (Salida),
);

CREATE Table olimpiada.Registro(
    Registro DATETIME NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    HorarioMenos DATETIME NOT NULL, 
    HorarioMas DATETIME NOT NULL,
    CantIngresos INT NOT NULL,
);

CREATE Table Persona(
    DNI INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
);

CREATE Table Entrada (
    Entrada INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idLocal INT NOT NULL FOREIGN KEY,    
    constraint FOREIGN KEY Entrada_Local (idLocal) REFERENCES olimpiada.Local (Sucursal)
); 

CREATE Table Salida (
    Salida INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idLocal INT NOT NULL FOREIGN KEY,
    constraint FOREIGN KEY Salida_Local (idLocal) REFERENCES olimpiada.Local (Sucursal)
);