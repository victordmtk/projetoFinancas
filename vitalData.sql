use Finance

--inserção de planos

insert into planos(planoId, tipo, preco, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values (0, 'gratuito', 0, 1, 'victordmtk', '2022-07-01 00:00:00', 'victordmtk', '2022-07-01 00:00:00')

insert into planos(planoId, tipo, preco, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values (1, 'mensal', 30, 1, 'victordmtk', '2022-07-01 00:00:00', 'victordmtk', '2022-07-01 00:00:00')

insert into planos(planoId, tipo, preco, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values (2, 'trimestral', 75, 1, 'victordmtk','2022-07-01 00:00:00', 'victordmtk', '2022-07-01 00:00:00')

insert into planos(planoId, tipo, preco, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values (3, 'anual', 300, 1, 'victordmtk', '2022-07-01 00:00:00', 'victordmtk', '2022-07-01 00:00:00')

-- inserção de categorias

insert into categorias(categoriaId, nomeCategoria, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values (0, 'casa', 1, 'victordmtk', '2022-07-01 00:00:00', 'victordmtk', '2022-07-01 00:00:00')

insert into categorias(categoriaId, nomeCategoria, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values (1, 'transporte', 1, 'victordmtk', '2022-07-01 00:00:00', 'victordmtk', '2022-07-01 00:00:00')

insert into categorias(categoriaId, nomeCategoria, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values (2, 'educacao', 1, 'victordmtk', '2022-07-01 00:00:00', 'victordmtk', '2022-07-01 00:00:00')

insert into categorias(categoriaId, nomeCategoria, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values (3, 'saude', 1, 'victordmtk', '2022-07-01 00:00:00', 'victordmtk', '2022-07-01 00:00:00')

insert into categorias(categoriaId, nomeCategoria, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values (4, 'lazer', 1, 'victordmtk', '2022-07-01 00:00:00', 'victordmtk', '2022-07-01 00:00:00')

insert into categorias(categoriaId, nomeCategoria, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values (5, 'outros', 1, 'victordmtk', '2022-07-01 00:00:00', 'victordmtk', '2022-07-01 00:00:00')



insert into clientes( nomeCompleto, email, cpfCnpj, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values ('Victor Demetriuk de Melo', 'victordemetriuk@gmail.com', '99999999999', 1, 'victordmtk', '2022-07-01 00:00:00', 'victordmtk', '2022-07-01 00:00:00')
insert into CredenciaisClientes (userName, senha, clienteId, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values ('victordmtk', 'as3fr45bmk9qernag76ntr78f8asdhae', 1, 1, 'victordmtk', '2022-07-01 00:00:00', 'victordmtk', '2022-07-01 00:00:00')
