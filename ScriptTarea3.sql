﻿USE [Colegio]
GO
/****** Object:  Table [dbo].[DatosEstudiantes]    Script Date: 16/11/2020 17:22:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosEstudiantes](
	[IdEstudiante] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Carrera] [varchar](50) NULL,
 CONSTRAINT [PK_DatosEstudiantes] PRIMARY KEY CLUSTERED 
(
	[IdEstudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materias]    Script Date: 16/11/2020 17:22:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materias](
	[IdMaterias] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Materias] PRIMARY KEY CLUSTERED 
(
	[IdMaterias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotasEstudiantes]    Script Date: 16/11/2020 17:22:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotasEstudiantes](
	[IdNotasEstudiantes] [int] IDENTITY(1,1) NOT NULL,
	[IdEstudiante] [int] NULL,
	[IdMateria] [int] NULL,
	[Nota] [float] NULL,
 CONSTRAINT [PK_NotasEstudiantes] PRIMARY KEY CLUSTERED 
(
	[IdNotasEstudiantes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DatosEstudiantes] ON 

INSERT [dbo].[DatosEstudiantes] ([IdEstudiante], [Nombre], [Carrera]) VALUES (1, N'Kevin Lopez', N'Ingenieria en Informatica')
INSERT [dbo].[DatosEstudiantes] ([IdEstudiante], [Nombre], [Carrera]) VALUES (2, N'Josue Alvarado', N'Ingenieria en Informatica')
INSERT [dbo].[DatosEstudiantes] ([IdEstudiante], [Nombre], [Carrera]) VALUES (3, N'Kevo Alvarez', N'Ingenieria en Informatica')
INSERT [dbo].[DatosEstudiantes] ([IdEstudiante], [Nombre], [Carrera]) VALUES (4, N'Maria Jose', N'Ingenieria en Informatica')
INSERT [dbo].[DatosEstudiantes] ([IdEstudiante], [Nombre], [Carrera]) VALUES (5, N'Joshua Leiva', N'Ingenieria en Informatica')
INSERT [dbo].[DatosEstudiantes] ([IdEstudiante], [Nombre], [Carrera]) VALUES (6, N'Manuel Bonilla', N'Ingeniera en Informatica')
SET IDENTITY_INSERT [dbo].[DatosEstudiantes] OFF
GO
SET IDENTITY_INSERT [dbo].[Materias] ON 

INSERT [dbo].[Materias] ([IdMaterias], [Nombre]) VALUES (1, N'Introduccion a la informatica')
INSERT [dbo].[Materias] ([IdMaterias], [Nombre]) VALUES (2, N'Programacion 1')
INSERT [dbo].[Materias] ([IdMaterias], [Nombre]) VALUES (3, N'Programacion 2')
INSERT [dbo].[Materias] ([IdMaterias], [Nombre]) VALUES (4, N'Programacion 3')
INSERT [dbo].[Materias] ([IdMaterias], [Nombre]) VALUES (5, N'Programacion 4')
INSERT [dbo].[Materias] ([IdMaterias], [Nombre]) VALUES (6, N'Administracion de Base de Datos')
SET IDENTITY_INSERT [dbo].[Materias] OFF
GO
SET IDENTITY_INSERT [dbo].[NotasEstudiantes] ON 

INSERT [dbo].[NotasEstudiantes] ([IdNotasEstudiantes], [IdEstudiante], [IdMateria], [Nota]) VALUES (1, 1, 1, 98)
INSERT [dbo].[NotasEstudiantes] ([IdNotasEstudiantes], [IdEstudiante], [IdMateria], [Nota]) VALUES (2, 1, 2, 80)
INSERT [dbo].[NotasEstudiantes] ([IdNotasEstudiantes], [IdEstudiante], [IdMateria], [Nota]) VALUES (3, 1, 3, 98)
INSERT [dbo].[NotasEstudiantes] ([IdNotasEstudiantes], [IdEstudiante], [IdMateria], [Nota]) VALUES (4, 1, 4, 89)
INSERT [dbo].[NotasEstudiantes] ([IdNotasEstudiantes], [IdEstudiante], [IdMateria], [Nota]) VALUES (5, 1, 5, 98)
INSERT [dbo].[NotasEstudiantes] ([IdNotasEstudiantes], [IdEstudiante], [IdMateria], [Nota]) VALUES (6, 2, 1, 100)
INSERT [dbo].[NotasEstudiantes] ([IdNotasEstudiantes], [IdEstudiante], [IdMateria], [Nota]) VALUES (7, 2, 2, 89)
INSERT [dbo].[NotasEstudiantes] ([IdNotasEstudiantes], [IdEstudiante], [IdMateria], [Nota]) VALUES (8, 3, 1, 99)
INSERT [dbo].[NotasEstudiantes] ([IdNotasEstudiantes], [IdEstudiante], [IdMateria], [Nota]) VALUES (9, 3, 2, 98)
INSERT [dbo].[NotasEstudiantes] ([IdNotasEstudiantes], [IdEstudiante], [IdMateria], [Nota]) VALUES (10, 4, 3, 87)
INSERT [dbo].[NotasEstudiantes] ([IdNotasEstudiantes], [IdEstudiante], [IdMateria], [Nota]) VALUES (11, 4, 4, 100)
INSERT [dbo].[NotasEstudiantes] ([IdNotasEstudiantes], [IdEstudiante], [IdMateria], [Nota]) VALUES (12, 5, 3, 89)
INSERT [dbo].[NotasEstudiantes] ([IdNotasEstudiantes], [IdEstudiante], [IdMateria], [Nota]) VALUES (13, 5, 4, 99)
INSERT [dbo].[NotasEstudiantes] ([IdNotasEstudiantes], [IdEstudiante], [IdMateria], [Nota]) VALUES (14, 5, 5, 78)
INSERT [dbo].[NotasEstudiantes] ([IdNotasEstudiantes], [IdEstudiante], [IdMateria], [Nota]) VALUES (15, 6, 5, 100)
SET IDENTITY_INSERT [dbo].[NotasEstudiantes] OFF
GO
ALTER TABLE [dbo].[NotasEstudiantes]  WITH CHECK ADD  CONSTRAINT [FK_NotasEstudiantes_DatosEstudiantes] FOREIGN KEY([IdEstudiante])
REFERENCES [dbo].[DatosEstudiantes] ([IdEstudiante])
GO
ALTER TABLE [dbo].[NotasEstudiantes] CHECK CONSTRAINT [FK_NotasEstudiantes_DatosEstudiantes]
GO
ALTER TABLE [dbo].[NotasEstudiantes]  WITH CHECK ADD  CONSTRAINT [FK_NotasEstudiantes_Materias] FOREIGN KEY([IdMateria])
REFERENCES [dbo].[Materias] ([IdMaterias])
GO
ALTER TABLE [dbo].[NotasEstudiantes] CHECK CONSTRAINT [FK_NotasEstudiantes_Materias]
GO
