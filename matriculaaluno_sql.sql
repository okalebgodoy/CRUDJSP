create database if not exists matriculaaluno_sql default character set utf8mb4;
use matriculaaluno_sql; 

create table if not exists alunos
( 
id int not null auto_increment,
nome varchar (45) not null,
cpf varchar (45) not null,
turma varchar (45) not null,
primary key (id)
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4; 