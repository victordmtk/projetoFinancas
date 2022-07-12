drop table CredenciaisClientes

alter table Assinaturas drop constraint FK_Assinaturas_Planos
drop table Planos

alter table Assinaturas drop constraint FK_Assinaturas_Clientes
drop table Assinaturas

drop table Contas

alter table RegistrosOperacoes drop constraint FK_RegistrosOperacoes_Categorias
drop table Categorias

drop table RegistrosOperacoes
drop table Clientes