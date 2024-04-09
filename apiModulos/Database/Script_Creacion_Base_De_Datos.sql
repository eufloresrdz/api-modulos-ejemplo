USE [EjemploDinamico]
GO
/****** Object:  Table [dbo].[estados]    Script Date: 4/9/2024 2:10:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estados](
	[id] [int] NOT NULL,
	[estado] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_estados] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[modulos]    Script Date: 4/9/2024 2:10:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[modulos](
	[id_modulo] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [nvarchar](128) NOT NULL,
	[version] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_modulos] PRIMARY KEY CLUSTERED 
(
	[id_modulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[preguntasxmodulo]    Script Date: 4/9/2024 2:10:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[preguntasxmodulo](
	[id_pregunta] [int] IDENTITY(1,1) NOT NULL,
	[texto] [nvarchar](500) NOT NULL,
	[id_modulo] [int] NOT NULL,
	[posicion] [int] NOT NULL,
 CONSTRAINT [PK_preguntasxmodulo] PRIMARY KEY CLUSTERED 
(
	[id_pregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[respuestasxmodulo]    Script Date: 4/9/2024 2:10:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[respuestasxmodulo](
	[id_respuesta] [int] IDENTITY(1,1) NOT NULL,
	[placeholder] [nvarchar](50) NOT NULL,
	[posicion] [int] NOT NULL,
	[datasource] [nvarchar](500) NULL,
	[is_local] [bit] NULL,
	[max_length] [int] NULL,
	[value] [nvarchar](50) NULL,
	[id_tipo] [int] NOT NULL,
	[id_pregunta] [int] NOT NULL,
	[min] [int] NULL,
	[max] [int] NULL,
	[height] [nvarchar](10) NULL,
 CONSTRAINT [PK_respuestasxmodulo] PRIMARY KEY CLUSTERED 
(
	[id_respuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipos_control]    Script Date: 4/9/2024 2:10:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipos_control](
	[id_tipo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_tipos_control] PRIMARY KEY CLUSTERED 
(
	[id_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (1, N'Aguascalientes')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (2, N'Baja California')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (3, N'Baja California Sur')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (4, N'Campeche')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (5, N'Coahuila de Zaragoza')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (6, N'Colima')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (7, N'Chiapas')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (8, N'Chihuahua')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (9, N'Distrito Federal')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (10, N'Durango')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (11, N'Guanajuato')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (12, N'Guerrero')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (13, N'Hidalgo')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (14, N'Jalisco')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (15, N'México')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (16, N'Michoacán de Ocampo')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (17, N'Morelos')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (18, N'Nayarit')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (19, N'Nuevo León')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (20, N'Oaxaca de Juárez')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (21, N'Puebla')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (22, N'Querétaro')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (23, N'Quintana Roo')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (24, N'San Luis Potosí')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (25, N'Sinaloa')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (26, N'Sonora')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (27, N'Tabasco')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (28, N'Tamaulipas')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (29, N'Tlaxcala')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (30, N'Veracruz de Ignacio de la Llave')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (31, N'Yucatán')
GO
INSERT [dbo].[estados] ([id], [estado]) VALUES (32, N'Zacatecas')
GO
SET IDENTITY_INSERT [dbo].[modulos] ON 
GO
INSERT [dbo].[modulos] ([id_modulo], [titulo], [version]) VALUES (1, N'Información personal', N'1.0')
GO
INSERT [dbo].[modulos] ([id_modulo], [titulo], [version]) VALUES (3, N'Información personal', N'2.0')
GO
SET IDENTITY_INSERT [dbo].[modulos] OFF
GO
SET IDENTITY_INSERT [dbo].[preguntasxmodulo] ON 
GO
INSERT [dbo].[preguntasxmodulo] ([id_pregunta], [texto], [id_modulo], [posicion]) VALUES (1, N'¿Cual es tu nombre?', 1, 1)
GO
INSERT [dbo].[preguntasxmodulo] ([id_pregunta], [texto], [id_modulo], [posicion]) VALUES (2, N'¿Cual es tu edad?', 1, 2)
GO
INSERT [dbo].[preguntasxmodulo] ([id_pregunta], [texto], [id_modulo], [posicion]) VALUES (3, N'¿En donde naciste?', 1, 3)
GO
INSERT [dbo].[preguntasxmodulo] ([id_pregunta], [texto], [id_modulo], [posicion]) VALUES (4, N'Selecciona tu género', 1, 4)
GO
INSERT [dbo].[preguntasxmodulo] ([id_pregunta], [texto], [id_modulo], [posicion]) VALUES (17, N'¿Cual es tu nombre completo?', 3, 1)
GO
INSERT [dbo].[preguntasxmodulo] ([id_pregunta], [texto], [id_modulo], [posicion]) VALUES (18, N'¿Cual es tu edad?', 3, 2)
GO
INSERT [dbo].[preguntasxmodulo] ([id_pregunta], [texto], [id_modulo], [posicion]) VALUES (19, N'¿En que estado naciste?', 3, 3)
GO
INSERT [dbo].[preguntasxmodulo] ([id_pregunta], [texto], [id_modulo], [posicion]) VALUES (20, N'Selecciona tu género', 3, 4)
GO
INSERT [dbo].[preguntasxmodulo] ([id_pregunta], [texto], [id_modulo], [posicion]) VALUES (21, N'Por favor proporciona tu CURP', 3, 5)
GO
SET IDENTITY_INSERT [dbo].[preguntasxmodulo] OFF
GO
SET IDENTITY_INSERT [dbo].[respuestasxmodulo] ON 
GO
INSERT [dbo].[respuestasxmodulo] ([id_respuesta], [placeholder], [posicion], [datasource], [is_local], [max_length], [value], [id_tipo], [id_pregunta], [min], [max], [height]) VALUES (1, N'Escribe tu nombre completo', 1, NULL, NULL, 50, N'nombre', 2, 1, NULL, NULL, N'80px')
GO
INSERT [dbo].[respuestasxmodulo] ([id_respuesta], [placeholder], [posicion], [datasource], [is_local], [max_length], [value], [id_tipo], [id_pregunta], [min], [max], [height]) VALUES (2, N'Ingresa tu edad', 1, NULL, NULL, NULL, N'edad', 4, 2, 18, 99, NULL)
GO
INSERT [dbo].[respuestasxmodulo] ([id_respuesta], [placeholder], [posicion], [datasource], [is_local], [max_length], [value], [id_tipo], [id_pregunta], [min], [max], [height]) VALUES (3, N'Escribe tu estado de nacimiento', 1, NULL, NULL, 128, N'estado', 3, 3, NULL, NULL, NULL)
GO
INSERT [dbo].[respuestasxmodulo] ([id_respuesta], [placeholder], [posicion], [datasource], [is_local], [max_length], [value], [id_tipo], [id_pregunta], [min], [max], [height]) VALUES (4, N'Masculino', 1, NULL, NULL, NULL, N'masculino', 1, 4, NULL, NULL, NULL)
GO
INSERT [dbo].[respuestasxmodulo] ([id_respuesta], [placeholder], [posicion], [datasource], [is_local], [max_length], [value], [id_tipo], [id_pregunta], [min], [max], [height]) VALUES (5, N'Femenino', 2, NULL, NULL, NULL, N'femenino', 1, 4, NULL, NULL, NULL)
GO
INSERT [dbo].[respuestasxmodulo] ([id_respuesta], [placeholder], [posicion], [datasource], [is_local], [max_length], [value], [id_tipo], [id_pregunta], [min], [max], [height]) VALUES (28, N'No Binario', 3, NULL, NULL, NULL, N'nobinario', 1, 4, NULL, NULL, NULL)
GO
INSERT [dbo].[respuestasxmodulo] ([id_respuesta], [placeholder], [posicion], [datasource], [is_local], [max_length], [value], [id_tipo], [id_pregunta], [min], [max], [height]) VALUES (29, N'Escribe tu nombre completo', 1, NULL, NULL, 50, N'nombre', 2, 17, NULL, NULL, N'40px')
GO
INSERT [dbo].[respuestasxmodulo] ([id_respuesta], [placeholder], [posicion], [datasource], [is_local], [max_length], [value], [id_tipo], [id_pregunta], [min], [max], [height]) VALUES (30, N'Ingresa tu edad', 1, NULL, NULL, NULL, N'edad', 4, 18, 17, 110, NULL)
GO
INSERT [dbo].[respuestasxmodulo] ([id_respuesta], [placeholder], [posicion], [datasource], [is_local], [max_length], [value], [id_tipo], [id_pregunta], [min], [max], [height]) VALUES (31, N'Escribe tu estado de nacimiento', 1, NULL, NULL, 128, N'estado', 3, 19, NULL, NULL, NULL)
GO
INSERT [dbo].[respuestasxmodulo] ([id_respuesta], [placeholder], [posicion], [datasource], [is_local], [max_length], [value], [id_tipo], [id_pregunta], [min], [max], [height]) VALUES (32, N'Masculino', 1, NULL, NULL, NULL, N'masculino', 1, 20, NULL, NULL, NULL)
GO
INSERT [dbo].[respuestasxmodulo] ([id_respuesta], [placeholder], [posicion], [datasource], [is_local], [max_length], [value], [id_tipo], [id_pregunta], [min], [max], [height]) VALUES (33, N'Femenino', 2, NULL, NULL, NULL, N'femenino', 1, 20, NULL, NULL, NULL)
GO
INSERT [dbo].[respuestasxmodulo] ([id_respuesta], [placeholder], [posicion], [datasource], [is_local], [max_length], [value], [id_tipo], [id_pregunta], [min], [max], [height]) VALUES (34, N'No Binario', 3, NULL, NULL, NULL, N'nobinario', 1, 20, NULL, NULL, NULL)
GO
INSERT [dbo].[respuestasxmodulo] ([id_respuesta], [placeholder], [posicion], [datasource], [is_local], [max_length], [value], [id_tipo], [id_pregunta], [min], [max], [height]) VALUES (35, N'Escribe tu CURP', 1, NULL, NULL, 18, N'curp', 2, 21, NULL, NULL, N'40px')
GO
SET IDENTITY_INSERT [dbo].[respuestasxmodulo] OFF
GO
SET IDENTITY_INSERT [dbo].[tipos_control] ON 
GO
INSERT [dbo].[tipos_control] ([id_tipo], [descripcion]) VALUES (1, N'Button')
GO
INSERT [dbo].[tipos_control] ([id_tipo], [descripcion]) VALUES (2, N'Text Area')
GO
INSERT [dbo].[tipos_control] ([id_tipo], [descripcion]) VALUES (3, N'Autocomplete')
GO
INSERT [dbo].[tipos_control] ([id_tipo], [descripcion]) VALUES (4, N'Input Number')
GO
SET IDENTITY_INSERT [dbo].[tipos_control] OFF
GO
ALTER TABLE [dbo].[preguntasxmodulo]  WITH CHECK ADD  CONSTRAINT [FK_preguntasxmodulo_modulos] FOREIGN KEY([id_modulo])
REFERENCES [dbo].[modulos] ([id_modulo])
GO
ALTER TABLE [dbo].[preguntasxmodulo] CHECK CONSTRAINT [FK_preguntasxmodulo_modulos]
GO
ALTER TABLE [dbo].[respuestasxmodulo]  WITH CHECK ADD  CONSTRAINT [FK_respuestasxmodulo_preguntasxmodulo] FOREIGN KEY([id_pregunta])
REFERENCES [dbo].[preguntasxmodulo] ([id_pregunta])
GO
ALTER TABLE [dbo].[respuestasxmodulo] CHECK CONSTRAINT [FK_respuestasxmodulo_preguntasxmodulo]
GO
ALTER TABLE [dbo].[respuestasxmodulo]  WITH CHECK ADD  CONSTRAINT [FK_respuestasxmodulo_tipos_control] FOREIGN KEY([id_tipo])
REFERENCES [dbo].[tipos_control] ([id_tipo])
GO
ALTER TABLE [dbo].[respuestasxmodulo] CHECK CONSTRAINT [FK_respuestasxmodulo_tipos_control]
GO
