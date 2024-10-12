﻿CREATE TABLE [dbo].[DimTiempo] (
    [Id_Tiempo] INT NOT NULL CONSTRAINT [PK_Tiempo] PRIMARY KEY,
    [Fecha] DATETIME NOT NULL,
    [Dia] NVARCHAR(2) NOT NULL,
	[Mes] NVARCHAR(10) NOT NULL,
    [Año] NVARCHAR(4) NOT NULL,
    [Semana] NVARCHAR(2) NOT NULL,
	[Trimestre] NVARCHAR(2) NOT NULL
);