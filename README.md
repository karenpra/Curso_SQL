"# Proyecto SQL" 
CREATE TABLE Datos_Afiliado (
  IdAfiliado INT PRIMARY KEY,
  TipoDocumento VARCHAR(2) NOT NULL,  
  Identificacion VARCHAR(15) NOT NULL,
  NOMBRE VARCHAR(100) NOT NULL,
  Areaid VARCHAR(50) NOT NULL
);
 
CREATE TABLE Regionales (
  IdAfiliado INT,
  Regional VARCHAR(20) NOT NULL,  
  Zonal VARCHAR(20) NOT NULL,
  PRIMARY KEY (IdAfiliado, Regional),
  FOREIGN KEY (IdAfiliado) REFERENCES Datos_Afiliado(IdAfiliado)
);
 
CREATE TABLE Instancias (
  IdAfiliado INT,
  TipoOInstancia VARCHAR(100),
  PRIMARY KEY (IdAfiliado, TipoOInstancia),
  FOREIGN KEY (IdAfiliado) REFERENCES Datos_Afiliado(IdAfiliado)
);
 
CREATE TABLE CausalesReapertura (
  IdAfiliado INT,
  CausalReapertura VARCHAR(255),
  FechaCierreInicial DATE,
  FechaReapertura DATE,
  PRIMARY KEY (IdAfiliado, CausalReapertura),
  FOREIGN KEY (IdAfiliado) REFERENCES Datos_Afiliado(IdAfiliado)
);
 
CREATE TABLE Areas (
  IdAfiliado INT,
  ObjetoAccion VARCHAR(255),
  PRIMARY KEY (IdAfiliado, ObjetoAccion),
  FOREIGN KEY (IdAfiliado) REFERENCES Datos_Afiliado(IdAfiliado)
);
 
CREATE TABLE AreasCausales (
  IdAfiliado INT,
  AreaResponsable VARCHAR(255),
  PRIMARY KEY (IdAfiliado, AreaResponsable),
  FOREIGN KEY (IdAfiliado) REFERENCES Datos_Afiliado(IdAfiliado)
);
