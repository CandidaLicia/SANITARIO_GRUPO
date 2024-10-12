﻿CREATE TABLE [dbo].[FacVisita] (
    [Id_FacVisita] INT IDENTITY(1,1) NOT NULL,
    [SK_Paciente] INT NOT NULL,
    [SK_Hospital] INT NOT NULL,
    [SK_Medico] INT NOT NULL,
    [Id_Visita] INT NOT NULL,
    [Id_Fecha] INT NOT NULL,
    [Precio_total] FLOAT NULL,
	[es_Reconsulta] int NULL,
    [Id_Visita_inicial] INT NOT NULL,
	[Diagnostico] NVARCHAR(100) NULL,
	[datos_adicionales] NVARCHAR(200) NULL,    
    CONSTRAINT [PK_Visita_FacVisita] PRIMARY KEY CLUSTERED ([Id_FacVisita] ASC),
    CONSTRAINT [FK_Visita_Paciente] FOREIGN KEY ([SK_Paciente]) REFERENCES [dbo].[DimPaciente] ([SK_Paciente]),
	CONSTRAINT [FK_Visita_Hospital] FOREIGN KEY ([SK_Hospital]) REFERENCES [dbo].[DimHospital] ([SK_Hospital]),
	CONSTRAINT [FK_Visita_Medico] FOREIGN KEY ([SK_Medico]) REFERENCES [dbo].[DimMedico] ([SK_Medico]),
	CONSTRAINT [FK_Visita_Tiempo] FOREIGN KEY ([Id_Fecha]) REFERENCES [dbo].[DimTiempo] ([Id_Tiempo])
);