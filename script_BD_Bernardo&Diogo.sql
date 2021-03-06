USE [Bernardo_Diogo]
GO
/****** Object:  User [INTRANET\201800128]    Script Date: 02/07/2019 17:30:42 ******/
CREATE USER [INTRANET\201800128] FOR LOGIN [INTRANET\201800128] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [INTRANET\201800128]
GO
/****** Object:  Schema [pj]    Script Date: 02/07/2019 17:30:42 ******/
CREATE SCHEMA [pj]
GO
/****** Object:  Table [pj].[Candidato]    Script Date: 02/07/2019 17:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pj].[Candidato](
	[ID_candidato] [int] NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[Cod_Curso] [int] NOT NULL,
	[ID_Candidatura] [int] NOT NULL,
	[Cod_UC] [int] NOT NULL,
	[sexo] [varchar](10) NOT NULL,
	[morada] [varchar](200) NOT NULL,
	[contacto] [char](9) NOT NULL,
	[filiação] [varchar](100) NOT NULL,
	[NIF] [char](9) NOT NULL,
	[CC] [char](9) NOT NULL,
	[data_de_nascimento] [date] NULL,
 CONSTRAINT [PK_Candidato] PRIMARY KEY CLUSTERED 
(
	[ID_candidato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [pj].[bioinformatica]    Script Date: 02/07/2019 17:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [pj].[bioinformatica] AS
SELECT nome, Cod_Curso
FROM pj.Candidato
WHERE Cod_Curso = 1  
GO
/****** Object:  View [pj].[biotecnologia]    Script Date: 02/07/2019 17:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [pj].[biotecnologia] AS
SELECT Cod_Curso, nome
FROM pj.Candidato
WHERE Cod_Curso = 2
GO
/****** Object:  View [pj].[Contabilidade]    Script Date: 02/07/2019 17:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [pj].[Contabilidade] AS
SELECT Cod_Curso, nome
FROM pj.Candidato
WHERE Cod_Curso = 3
GO
/****** Object:  View [pj].[Cuidados Veterinários]    Script Date: 02/07/2019 17:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [pj].[Cuidados Veterinários] AS
SELECT Cod_Curso, nome
FROM pj.Candidato
WHERE Cod_Curso = 4
GO
/****** Object:  View [pj].[Defesa da Floresta Contra Incêndios]    Script Date: 02/07/2019 17:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [pj].[Defesa da Floresta Contra Incêndios] AS
SELECT Cod_Curso, nome
FROM pj.Candidato
WHERE Cod_Curso = 6
GO
/****** Object:  View [pj].[Desenvolvimento de Produtos Multimédia]    Script Date: 02/07/2019 17:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [pj].[Desenvolvimento de Produtos Multimédia] AS
SELECT Cod_Curso, nome
FROM pj.Candidato
WHERE Cod_Curso = 5
GO
/****** Object:  View [pj].[Gerontologia]    Script Date: 02/07/2019 17:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [pj].[Gerontologia] AS
SELECT Cod_Curso, nome
FROM pj.Candidato
WHERE Cod_Curso = 9
GO
/****** Object:  View [pj].[Gestão de Vendas e Marketing]    Script Date: 02/07/2019 17:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [pj].[Gestão de Vendas e Marketing] AS
SELECT Cod_Curso, nome
FROM pj.Candidato
WHERE Cod_Curso = 10
GO
/****** Object:  View [pj].[Produção Agrícola]    Script Date: 02/07/2019 17:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [pj].[Produção Agrícola] AS
SELECT Cod_Curso, nome
FROM pj.Candidato
WHERE Cod_Curso = 7
GO
/****** Object:  View [pj].[Tecnologia Mecânica e Veículos]    Script Date: 02/07/2019 17:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [pj].[Tecnologia Mecânica e Veículos] AS
SELECT Cod_Curso, nome
FROM pj.Candidato
WHERE Cod_Curso = 8
GO
/****** Object:  Table [pj].[Candidatura]    Script Date: 02/07/2019 17:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pj].[Candidatura](
	[ID_Candidatura] [int] NOT NULL,
	[data] [date] NULL,
 CONSTRAINT [PK_Candidatura] PRIMARY KEY CLUSTERED 
(
	[ID_Candidatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pj].[Curso]    Script Date: 02/07/2019 17:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pj].[Curso](
	[Cod_Curso] [int] NOT NULL,
	[Designação] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Curso] PRIMARY KEY CLUSTERED 
(
	[Cod_Curso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pj].[M23]    Script Date: 02/07/2019 17:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pj].[M23](
	[ID_candidatura] [int] NOT NULL,
	[idade] [int] NOT NULL,
 CONSTRAINT [PK_M23_1] PRIMARY KEY CLUSTERED 
(
	[ID_candidatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pj].[mudança_de_curso]    Script Date: 02/07/2019 17:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pj].[mudança_de_curso](
	[ID_Candidatura] [int] NOT NULL,
	[média no curso] [int] NULL,
	[curso anterior] [varchar](100) NOT NULL,
 CONSTRAINT [PK_mudança_de_curso] PRIMARY KEY CLUSTERED 
(
	[ID_Candidatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pj].[preenche]    Script Date: 02/07/2019 17:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pj].[preenche](
	[cod_prenchimento] [int] NOT NULL,
	[Cod_UC] [int] NOT NULL,
	[ID_candidato] [int] NOT NULL,
 CONSTRAINT [PK_prenche] PRIMARY KEY CLUSTERED 
(
	[cod_prenchimento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pj].[Reingresso]    Script Date: 02/07/2019 17:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pj].[Reingresso](
	[ID_Candidatura] [int] NOT NULL,
	[data que deixou] [date] NOT NULL,
 CONSTRAINT [PK_Reingresso] PRIMARY KEY CLUSTERED 
(
	[ID_Candidatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pj].[Tipo_de_Candidatura]    Script Date: 02/07/2019 17:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pj].[Tipo_de_Candidatura](
	[ID_Candidatura] [int] NOT NULL,
	[Designação] [varchar](100) NOT NULL,
	[ID_Tipo_de_Candidatura] [int] NOT NULL,
	[ID_Candidato] [int] NOT NULL,
 CONSTRAINT [PK_Tipo de Candidatura] PRIMARY KEY CLUSTERED 
(
	[ID_Tipo_de_Candidatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pj].[titulares de curso superior]    Script Date: 02/07/2019 17:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pj].[titulares de curso superior](
	[ID_Candidatura] [int] NOT NULL,
	[designação do curso que tem] [varchar](100) NOT NULL,
	[data em que realizou] [date] NOT NULL,
	[local onde realizou] [varchar](100) NOT NULL,
 CONSTRAINT [PK_titulares de curso superior] PRIMARY KEY CLUSTERED 
(
	[ID_Candidatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pj].[titulares_de_CET]    Script Date: 02/07/2019 17:30:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pj].[titulares_de_CET](
	[ID_candidatura] [int] NOT NULL,
	[designação do CET] [varchar](100) NOT NULL,
	[data em que realizou] [date] NOT NULL,
	[local onde realizou] [varchar](100) NOT NULL,
 CONSTRAINT [PK_titulares_de_CET] PRIMARY KEY CLUSTERED 
(
	[ID_candidatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pj].[titulares_de_CTeSP]    Script Date: 02/07/2019 17:30:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pj].[titulares_de_CTeSP](
	[ID_candidatura] [int] NOT NULL,
	[designação do CTeSP] [varchar](100) NOT NULL,
	[data em que realizou] [date] NOT NULL,
	[local onde realizou] [varchar](100) NOT NULL,
 CONSTRAINT [PK_titulares_de_CTeSP] PRIMARY KEY CLUSTERED 
(
	[ID_candidatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pj].[Unidades_Curriculares]    Script Date: 02/07/2019 17:30:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pj].[Unidades_Curriculares](
	[Cod_UC] [int] NOT NULL,
	[designação] [varchar](100) NOT NULL,
	[creditos_ECTS] [char](2) NOT NULL,
	[Inst_realiz] [varchar](100) NOT NULL,
	[nota] [char](2) NOT NULL,
	[data] [date] NOT NULL,
 CONSTRAINT [PK_Unidades Curriculares] PRIMARY KEY CLUSTERED 
(
	[Cod_UC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [pj].[Candidato]  WITH CHECK ADD  CONSTRAINT [FK_Candidato_Candidatura1] FOREIGN KEY([ID_Candidatura])
REFERENCES [pj].[Candidatura] ([ID_Candidatura])
GO
ALTER TABLE [pj].[Candidato] CHECK CONSTRAINT [FK_Candidato_Candidatura1]
GO
ALTER TABLE [pj].[Candidato]  WITH CHECK ADD  CONSTRAINT [FK_Candidato_Curso1] FOREIGN KEY([Cod_Curso])
REFERENCES [pj].[Curso] ([Cod_Curso])
GO
ALTER TABLE [pj].[Candidato] CHECK CONSTRAINT [FK_Candidato_Curso1]
GO
ALTER TABLE [pj].[Tipo_de_Candidatura]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_de_Candidatura_Candidatura1] FOREIGN KEY([ID_Candidatura])
REFERENCES [pj].[Candidatura] ([ID_Candidatura])
GO
ALTER TABLE [pj].[Tipo_de_Candidatura] CHECK CONSTRAINT [FK_Tipo_de_Candidatura_Candidatura1]
GO
ALTER TABLE [pj].[Tipo_de_Candidatura]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_de_Candidatura_M231] FOREIGN KEY([ID_Candidatura])
REFERENCES [pj].[M23] ([ID_candidatura])
GO
ALTER TABLE [pj].[Tipo_de_Candidatura] CHECK CONSTRAINT [FK_Tipo_de_Candidatura_M231]
GO
ALTER TABLE [pj].[Tipo_de_Candidatura]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_de_Candidatura_mudança_de_curso] FOREIGN KEY([ID_Candidatura])
REFERENCES [pj].[mudança_de_curso] ([ID_Candidatura])
GO
ALTER TABLE [pj].[Tipo_de_Candidatura] CHECK CONSTRAINT [FK_Tipo_de_Candidatura_mudança_de_curso]
GO
ALTER TABLE [pj].[Tipo_de_Candidatura]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_de_Candidatura_Reingresso] FOREIGN KEY([ID_Candidatura])
REFERENCES [pj].[Reingresso] ([ID_Candidatura])
GO
ALTER TABLE [pj].[Tipo_de_Candidatura] CHECK CONSTRAINT [FK_Tipo_de_Candidatura_Reingresso]
GO
ALTER TABLE [pj].[Tipo_de_Candidatura]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_de_Candidatura_titulares de curso superior] FOREIGN KEY([ID_Candidatura])
REFERENCES [pj].[titulares de curso superior] ([ID_Candidatura])
GO
ALTER TABLE [pj].[Tipo_de_Candidatura] CHECK CONSTRAINT [FK_Tipo_de_Candidatura_titulares de curso superior]
GO
ALTER TABLE [pj].[Tipo_de_Candidatura]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_de_Candidatura_titulares_de_CET1] FOREIGN KEY([ID_Candidatura])
REFERENCES [pj].[titulares_de_CET] ([ID_candidatura])
GO
ALTER TABLE [pj].[Tipo_de_Candidatura] CHECK CONSTRAINT [FK_Tipo_de_Candidatura_titulares_de_CET1]
GO
ALTER TABLE [pj].[Tipo_de_Candidatura]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_de_Candidatura_titulares_de_CTeSP1] FOREIGN KEY([ID_Candidatura])
REFERENCES [pj].[titulares_de_CTeSP] ([ID_candidatura])
GO
ALTER TABLE [pj].[Tipo_de_Candidatura] CHECK CONSTRAINT [FK_Tipo_de_Candidatura_titulares_de_CTeSP1]
GO
