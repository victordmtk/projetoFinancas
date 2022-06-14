USE [projetoFinancas]
GO
/****** Object:  Table [dbo].[anexos]    Script Date: 13/06/2022 23:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[anexos](
	[anexoId] [int] IDENTITY(1,1) NOT NULL,
	[link] [varchar](max) NULL,
	[ativo] [bit] NOT NULL,
	[usuarioInclusao] [varchar](25) NOT NULL,
	[dataInclusao] [date] NOT NULL,
	[usuarioAlteracao] [varchar](25) NOT NULL,
	[dataAlteracao] [date] NOT NULL,
 CONSTRAINT [PK_anexos] PRIMARY KEY CLUSTERED 
(
	[anexoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 13/06/2022 23:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[categoriaId] [tinyint] IDENTITY(1,1) NOT NULL,
	[nomeCategoria] [varchar](25) NOT NULL,
	[ativo] [bit] NOT NULL,
	[usuarioInclusao] [varchar](25) NOT NULL,
	[dataInclusao] [date] NOT NULL,
	[usuarioAlteracao] [varchar](25) NOT NULL,
	[dataAlteracao] [date] NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[categoriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 13/06/2022 23:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[clienteID] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](150) NOT NULL,
	[cpfCnpj] [varchar](20) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[idplano] [tinyint] NOT NULL,
	[ativo] [bit] NOT NULL,
	[usuarioInclusao] [varchar](25) NOT NULL,
	[dataInclusao] [date] NOT NULL,
	[usuarioAlteracao] [varchar](25) NOT NULL,
	[dataAlteracao] [date] NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[clienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[conta]    Script Date: 13/06/2022 23:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[conta](
	[contaId] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](25) NOT NULL,
	[clienteId] [int] NOT NULL,
	[ativo] [bit] NOT NULL,
	[usuarioInclusao] [varchar](25) NOT NULL,
	[dataInclusao] [date] NOT NULL,
	[usuarioAlteracao] [varchar](25) NOT NULL,
	[dataAlteracao] [date] NOT NULL,
 CONSTRAINT [PK_conta] PRIMARY KEY CLUSTERED 
(
	[contaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[credencialUsuario]    Script Date: 13/06/2022 23:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[credencialUsuario](
	[usuarioId] [int] IDENTITY(1,1) NOT NULL,
	[nomeUsuario] [varchar](25) NOT NULL,
	[senha] [varchar](20) NOT NULL,
	[clienteId] [int] NOT NULL,
	[ativo] [bit] NOT NULL,
	[usuarioInclusao] [varchar](25) NOT NULL,
	[dataInclusao] [date] NOT NULL,
	[usuarioAlteracao] [varchar](25) NOT NULL,
	[dataAlteracao] [date] NOT NULL,
 CONSTRAINT [PK_credencialUsuario] PRIMARY KEY CLUSTERED 
(
	[usuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Planos]    Script Date: 13/06/2022 23:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planos](
	[planoId] [tinyint] IDENTITY(1,1) NOT NULL,
	[tipoPlano] [varchar](25) NOT NULL,
	[preco] [money] NOT NULL,
	[ativo] [bit] NOT NULL,
	[usuarioInclusao] [varchar](25) NOT NULL,
	[dataInclusao] [date] NOT NULL,
	[usuarioAlteracao] [varchar](25) NOT NULL,
	[dataAlteracao] [date] NOT NULL,
 CONSTRAINT [PK_Planos] PRIMARY KEY CLUSTERED 
(
	[planoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registros]    Script Date: 13/06/2022 23:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registros](
	[registroId] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](50) NOT NULL,
	[valor] [money] NOT NULL,
	[operacaoId] [bit] NOT NULL,
	[recorrencia] [tinyint] NOT NULL,
	[statusId] [bit] NOT NULL,
	[dataOperacao] [date] NOT NULL,
	[categoriaId] [tinyint] NOT NULL,
	[clienteId] [int] NOT NULL,
	[anexoId] [int] NULL,
	[ativo] [bit] NOT NULL,
	[usuarioInclusao] [varchar](25) NOT NULL,
	[dataInclusao] [date] NOT NULL,
	[usuarioAlteracao] [varchar](25) NOT NULL,
	[dataAlteracao] [date] NOT NULL,
 CONSTRAINT [PK_Registros] PRIMARY KEY CLUSTERED 
(
	[registroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[statusOperacao]    Script Date: 13/06/2022 23:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statusOperacao](
	[statusId] [bit] NOT NULL,
	[nomeStatus] [varchar](25) NOT NULL,
	[ativo] [bit] NOT NULL,
	[usuarioInclusao] [varchar](25) NOT NULL,
	[dataInclusao] [date] NOT NULL,
	[usuarioAlteracao] [varchar](25) NOT NULL,
	[dataAlteracao] [date] NOT NULL,
 CONSTRAINT [PK_statusOperacao] PRIMARY KEY CLUSTERED 
(
	[statusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoOperacao]    Script Date: 13/06/2022 23:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoOperacao](
	[operacaoId] [bit] NOT NULL,
	[nomeOperacao] [varchar](25) NOT NULL,
	[ativo] [bit] NOT NULL,
	[usuarioInclusao] [varchar](25) NOT NULL,
	[dataInclusao] [date] NOT NULL,
	[usuarioAlteracao] [varchar](25) NOT NULL,
	[dataAlteracao] [date] NOT NULL,
 CONSTRAINT [PK_tipoOperacao] PRIMARY KEY CLUSTERED 
(
	[operacaoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Planos] FOREIGN KEY([idplano])
REFERENCES [dbo].[Planos] ([planoId])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Planos]
GO
ALTER TABLE [dbo].[conta]  WITH CHECK ADD  CONSTRAINT [FK_conta_Clientes] FOREIGN KEY([clienteId])
REFERENCES [dbo].[Clientes] ([clienteID])
GO
ALTER TABLE [dbo].[conta] CHECK CONSTRAINT [FK_conta_Clientes]
GO
ALTER TABLE [dbo].[credencialUsuario]  WITH CHECK ADD  CONSTRAINT [FK_credencialUsuario_Clientes] FOREIGN KEY([clienteId])
REFERENCES [dbo].[Clientes] ([clienteID])
GO
ALTER TABLE [dbo].[credencialUsuario] CHECK CONSTRAINT [FK_credencialUsuario_Clientes]
GO
ALTER TABLE [dbo].[Registros]  WITH CHECK ADD  CONSTRAINT [FK_Registros_anexos] FOREIGN KEY([anexoId])
REFERENCES [dbo].[anexos] ([anexoId])
GO
ALTER TABLE [dbo].[Registros] CHECK CONSTRAINT [FK_Registros_anexos]
GO
ALTER TABLE [dbo].[Registros]  WITH CHECK ADD  CONSTRAINT [FK_Registros_Categorias] FOREIGN KEY([categoriaId])
REFERENCES [dbo].[Categorias] ([categoriaId])
GO
ALTER TABLE [dbo].[Registros] CHECK CONSTRAINT [FK_Registros_Categorias]
GO
ALTER TABLE [dbo].[Registros]  WITH CHECK ADD  CONSTRAINT [FK_Registros_Clientes] FOREIGN KEY([clienteId])
REFERENCES [dbo].[Clientes] ([clienteID])
GO
ALTER TABLE [dbo].[Registros] CHECK CONSTRAINT [FK_Registros_Clientes]
GO
ALTER TABLE [dbo].[Registros]  WITH CHECK ADD  CONSTRAINT [FK_Registros_statusOperacao] FOREIGN KEY([statusId])
REFERENCES [dbo].[statusOperacao] ([statusId])
GO
ALTER TABLE [dbo].[Registros] CHECK CONSTRAINT [FK_Registros_statusOperacao]
GO
ALTER TABLE [dbo].[Registros]  WITH CHECK ADD  CONSTRAINT [FK_Registros_tipoOperacao] FOREIGN KEY([operacaoId])
REFERENCES [dbo].[tipoOperacao] ([operacaoId])
GO
ALTER TABLE [dbo].[Registros] CHECK CONSTRAINT [FK_Registros_tipoOperacao]
GO
