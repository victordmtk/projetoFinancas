USE [finance]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assinaturas](
	[assinaturaId] [int] IDENTITY(1,1) NOT NULL,
	[planoId] [tinyint] NOT NULL,
	[clienteId] [int] NOT NULL,
	[dataValidade] [datetime] NOT NULL,
	[ativo] [bit] NOT NULL,
	[usuarioInclusao] [varchar](25) NOT NULL,
	[dataInclusao] [datetime] NOT NULL,
	[usuarioAlteracao] [varchar](25) NOT NULL,
	[dataAlteracao] [datetime] NOT NULL,
 CONSTRAINT [PK_Assinaturas] PRIMARY KEY CLUSTERED 
(
	[assinaturaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[categoriaId] [tinyint] NOT NULL,
	[nomeCategoria] [varchar](25) NOT NULL,
	[ativo] [bit] NOT NULL,
	[usuarioInclusao] [varchar](25) NOT NULL,
	[dataInclusao] [datetime] NOT NULL,
	[usuarioAlteracao] [varchar](25) NOT NULL,
	[dataAlteracao] [datetime] NOT NULL,
 CONSTRAINT [PK_categorias] PRIMARY KEY CLUSTERED 
(
	[categoriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[clienteId] [int] IDENTITY(1,1) NOT NULL,
	[nomeCompleto] [varchar](100) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[cpfCnpj] [varchar](20) NOT NULL,
	[ativo] [bit] NOT NULL,
	[usuarioInclusao] [varchar](25) NOT NULL,
	[dataInclusao] [datetime] NOT NULL,
	[usuarioAlteracao] [varchar](25) NOT NULL,
	[dataAlteracao] [datetime] NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[clienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contas](
	[contaId] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](30) NOT NULL,
	[clienteId] [int] NOT NULL,
	[ativo] [bit] NOT NULL,
	[usuarioInclusao] [varchar](25) NOT NULL,
	[dataInclusao] [datetime] NOT NULL,
	[usuarioAlteracao] [varchar](25) NOT NULL,
	[dataAlteracao] [datetime] NOT NULL,
 CONSTRAINT [PK_contas] PRIMARY KEY CLUSTERED 
(
	[contaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CredenciaisClientes](
	[userName] [varchar](30) NOT NULL,
	[senha] [varchar](20) NOT NULL,
	[clienteId] [int] NOT NULL,
	[ativo] [bit] NOT NULL,
	[usuarioInclusao] [varchar](25) NOT NULL,
	[dataInclusao] [datetime] NOT NULL,
	[usuarioAlteracao] [varchar](25) NOT NULL,
	[dataAlteracao] [datetime] NOT NULL,
 CONSTRAINT [PK_credenciaisClientes] PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planos](
	[planoId] [tinyint] NOT NULL,
	[tipo] [varchar](25) NOT NULL,
	[preco] [decimal](5, 2) NOT NULL,
	[ativo] [bit] NOT NULL,
	[usuarioInclusao] [varchar](25) NOT NULL,
	[dataInclusao] [datetime] NOT NULL,
	[usuarioAlteracao] [varchar](25) NOT NULL,
	[dataAlteracao] [datetime] NOT NULL,
 CONSTRAINT [PK_Planos] PRIMARY KEY CLUSTERED 
(
	[planoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistrosOperacoes](
	[registroId] [int] IDENTITY(1,1) NOT NULL,
	[clienteId] [int] NOT NULL,
	[descricao] [varchar](50) NOT NULL,
	[valor] [decimal](6, 2) NOT NULL,
	[tipoOperacao] [bit] NOT NULL,
	[recorrencia] [bit] NOT NULL,
	[tempoRecorrencia] [tinyint] NOT NULL,
	[liquidacao] [bit] NOT NULL,
	[dataLiquidacao] [date] NOT NULL,
	[categoriaId] [tinyint] NOT NULL,
	[linkAnexo] [varchar](50) NULL,
	[ativo] [bit] NOT NULL,
	[usuarioInclusao] [varchar](25) NOT NULL,
	[dataInclusao] [datetime] NOT NULL,
	[usuarioAlteracao] [varchar](25) NOT NULL,
	[dataAlteracao] [datetime] NOT NULL,
 CONSTRAINT [PK_registrosOperacoes] PRIMARY KEY CLUSTERED 
(
	[registroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Assinaturas]  WITH CHECK ADD  CONSTRAINT [FK_Assinaturas_Clientes] FOREIGN KEY([clienteId])
REFERENCES [dbo].[Clientes] ([clienteId])
GO
ALTER TABLE [dbo].[Assinaturas] CHECK CONSTRAINT [FK_Assinaturas_Clientes]
GO
ALTER TABLE [dbo].[Assinaturas]  WITH CHECK ADD  CONSTRAINT [FK_Assinaturas_Planos] FOREIGN KEY([planoId])
REFERENCES [dbo].[Planos] ([planoId])
GO
ALTER TABLE [dbo].[Assinaturas] CHECK CONSTRAINT [FK_Assinaturas_Planos]
GO
ALTER TABLE [dbo].[Contas]  WITH CHECK ADD  CONSTRAINT [FK_contas_Clientes] FOREIGN KEY([clienteId])
REFERENCES [dbo].[Clientes] ([clienteId])
GO
ALTER TABLE [dbo].[Contas] CHECK CONSTRAINT [FK_contas_Clientes]
GO
ALTER TABLE [dbo].[CredenciaisClientes]  WITH CHECK ADD  CONSTRAINT [FK_credenciaisClientes_Clientes] FOREIGN KEY([clienteId])
REFERENCES [dbo].[Clientes] ([clienteId])
GO
ALTER TABLE [dbo].[CredenciaisClientes] CHECK CONSTRAINT [FK_credenciaisClientes_Clientes]
GO
ALTER TABLE [dbo].[RegistrosOperacoes]  WITH CHECK ADD  CONSTRAINT [FK_registrosOperacoes_categorias] FOREIGN KEY([categoriaId])
REFERENCES [dbo].[Categorias] ([categoriaId])
GO
ALTER TABLE [dbo].[RegistrosOperacoes] CHECK CONSTRAINT [FK_registrosOperacoes_categorias]
GO
ALTER TABLE [dbo].[RegistrosOperacoes]  WITH CHECK ADD  CONSTRAINT [FK_registrosOperacoes_Clientes] FOREIGN KEY([clienteId])
REFERENCES [dbo].[Clientes] ([clienteId])
GO
ALTER TABLE [dbo].[RegistrosOperacoes] CHECK CONSTRAINT [FK_registrosOperacoes_Clientes]
GO
