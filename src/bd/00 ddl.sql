DROP database IF exists olimpiada;

CREATE database olimpiada;

CREATE Table olimpiada.Persona(
    DNI INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(60) NOT NULL,
    Apellido VARCHAR (60) NOT NULL,
    pass char(64) NOT NULL
);

CREATE TABLE olimpiada.Local(  
    Sucursal int primary key,
    Nombre VARCHAR(60) NOT NULL,
    idPersona INT NOT NULL FOREIGN KEY,
    idEntrada INT NOT NULL FOREIGN KEY,
    idSalida INT NOT NULL FOREIGN KEY,
    Direccion VARCHAR(60) NOT NULL, 
    CantMax INT NOT NULL, 
    constraint Local_Persona FOREIGN KEY (idPersona) REFERENCES olimpiada.Persona (DNI),
    constraint Local_Entrada FOREIGN KEY (idEntrada) REFERENCES olimpiada.Entrada (Local),
    constraint Local_Salida FOREIGN KEY (idSalida) REFERENCES olimpiada.Salida (Local),
);

CREATE Table olimpiada.Entrada (
    Local INT NOT NULL,  
    fechaHora Date NOT NULL, 
    PRIMARY key (Local, fechaHora),
    constraint Entrada_Local FOREIGN KEY (Local) REFERENCES olimpiada.Local (Sucursal)
); 

CREATE Table olimpiada.Salida (
    Local INT NOT NULL FOREIGN KEY,
    fechaHora Date NOT NULL,
    PRIMARY key (Local, fechaHora),
    constraint Salida_Local FOREIGN KEY (Local) REFERENCES olimpiada.Local (Sucursal)
);

CREATE Table olimpiada.Registro(
    Local int NOT NULL, 
    fechaHora Date NOT NULL,
    PRIMARY key(Local, fechaHora),
    constraint Registro_Local FOREIGN KEY (Local) REFERENCES olimpiada.Local(Sucursal),
);