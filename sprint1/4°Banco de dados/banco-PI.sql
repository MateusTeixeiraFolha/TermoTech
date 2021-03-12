create database bdEmpresa;
use bdEmpresa;

create table empresa(
	idEmpresa int primary key auto_increment,
    cnpjEmpresa char(18),
    responsavel varchar(50),
    cargo varchar (40),
    telefone varchar(15),
    email varchar (100)
);
create table tbUsuario (
	idUsuario int primary key auto_increment,
    nomeUsuario varchar (50),
    funcao varchar (12),
		check (funcao = 'ADM' or funcao = 'Funcionario' )
	
);

create table tbSensor (
	idSensor int primary key auto_increment,
    localSensor varchar (15),
    tipoSensor char (1) not null,
		check (tipoSensor = 'T' or tipoSensor = 'U'),
	 temperatura double,
     umidade double
);



create table simulador(
	idSimulador int primary key auto_increment,
    qtde int,
    precoCompra int,
    precoVenda int
);
create table contato(
	idContato int primary key auto_increment,
    nome varchar (50),
    email varchar(100),
    mensagem varchar(500)
);

alter table tbSensor add column mediaHora time; 

select 	idUsuario as 'Id',
		nomeUsuario as 'Nome do Usuário',
        funcao as 'Cargo do Usuário' from tbUsuario;

select 	idSensor as 'Id',
		localSensor as 'Local do sensor', 
        tipoSensor as 'tipo do Sensor',
        temperatura, umidade,
        mediaHora as 'Media por hora'
        from tbSensor;
