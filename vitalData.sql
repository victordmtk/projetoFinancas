insert into planos(tipoPlano, preco, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values ('gratuito', 0, 1, 'victordmtk', '2022-06-01', 'victordmtk', '2022-06-01')

insert into planos(tipoPlano, preco, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values ('mensal', 30, 1, 'victordmtk', '2022-06-01', 'victordmtk', '2022-06-01')

insert into planos(tipoPlano, preco, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values ('trimestral', 75, 1, 'victordmtk', '2022-06-01', 'victordmtk', '2022-06-01')

insert into planos(tipoPlano, preco, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values ('anual', 300, 1, 'victordmtk', '2022-06-01', 'victordmtk', '2022-06-01')


insert into categorias(nomeCategoria, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values ('casa', 1, 'victordmtk', '2022-06-01', 'victordmtk', '2022-06-01')

insert into categorias(nomeCategoria, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values ('transporte', 1, 'victordmtk', '2022-06-01', 'victordmtk', '2022-06-01')

insert into categorias(nomeCategoria, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values ('educacao', 1, 'victordmtk', '2022-06-01', 'victordmtk', '2022-06-01')

insert into categorias(nomeCategoria, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values ('saude', 1, 'victordmtk', '2022-06-01', 'victordmtk', '2022-06-01')

insert into categorias(nomeCategoria, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values ('lazer', 1,'victordmtk', '2022-06-01', 'victordmtk', '2022-06-01')

insert into categorias(nomeCategoria, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values ('outros', 1, 'victordmtk', '2022-06-01', 'victordmtk', '2022-06-01')


insert into statusOperacao(statusId, nomeStatus, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values (0, 'nao liquidada', 1, 'victordmtk', '2022-06-01', 'victordmtk', '2022-06-01')

insert into statusOperacao(statusId, nomeStatus, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values (1, 'liquidada', 1, 'victordmtk', '2022-06-01', 'victordmtk', '2022-06-01')


insert into tipoOperacao(operacaoId, nomeOperacao, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values (0, 'despesa', 1, 'victordmtk', '2022-06-01', 'victordmtk', '2022-06-01')

insert into tipoOperacao(operacaoId, nomeOperacao, ativo, usuarioInclusao, dataInclusao, usuarioAlteracao, dataAlteracao)
values (1, 'receita', 1, 'victordmtk', '2022-06-01', 'victordmtk', '2022-06-01')