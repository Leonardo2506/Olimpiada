DROP database IF exists olimpiada;
CREATE database olimpiada;

CREATE Table olimpiada.Persona(
    DNI INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(60) NOT NULL,
    Apellido VARCHAR (60) NOT NULL,
    pass char(64) NOT NULL
);

CREATE TABLE olimpiada.Local(  
    idSucursal int primary key,
    Nombre VARCHAR(60) NOT NULL,
    DNI INT NOT NULL,
    idEntrada INT NOT NULL,
    idSalida INT NOT NULL,
    Direccion VARCHAR(60) NOT NULL, 
    CantMax INT NOT NULL, 
    constraint Local_Persona FOREIGN KEY (DNI) REFERENCES olimpiada.Persona (DNI)
);

CREATE Table olimpiada.Entrada (
    idLocal INT NOT NULL,  
    fechaHora Date NOT NULL, 
    PRIMARY key (idLocal, fechaHora),
    constraint Entrada_Local FOREIGN KEY (idLocal) REFERENCES olimpiada.Local (idSucursal)
); 

CREATE Table olimpiada.Salida (
    idLocal INT NOT NULL,
    fechaHora Date NOT NULL,
    PRIMARY key (idLocal, fechaHora),
    constraint Salida_Local FOREIGN KEY (idLocal) REFERENCES olimpiada.Local (idSucursal)
);

CREATE Table olimpiada.Registro(
    idLocal int NOT NULL, 
    fechaHora Date NOT NULL,
    PRIMARY key(idLocal, fechaHora),
    constraint Registro_Local FOREIGN KEY (idLocal) REFERENCES olimpiada.Local(idSucursal)
);