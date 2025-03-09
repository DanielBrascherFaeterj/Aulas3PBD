--Criando o banco de dados
CREATE DATABASE trabalhobanco;

--Criando tabela de alunos
CREATE TABLE alunos (
  matricula VARCHAR(30),
  nome VARCHAR(100),
  email VARCHAR(80),
  cpf VARCHAR(30) 
  );

--Inserindo na tabela alunos
INSERT INTO alunos 
VALUES  ("24104708360049","Amilcar Ribeiro Rodrigues","amilcar.24104708360049@faeterj-rio.edu.br","584.588.540-07"),
        ("24104708360008","Bruno Amador Lima","bruno.24104708360008@faeterj-rio.edu.br","850.199.930-00"),
        ("24104708360005","Caio da Silva Ramos","caio.24104708360005@faeterj-rio.edu.br","691.620.260-20"),
        ("24104708360030","Daniel do Amaral Brascher","daniel.24104708360030@faeterj-rio.edu.br","692.376.900-02"),
        ("24104708360009","Daniel Gomes Venancio","daniel.24104708360009@faeterj-rio.edu.br","207.532.820-03"),
        ("24104708360025","Fabio Rodrigo Ortiz dos Santos","fabio.24104708360025@faeterj-rio.edu.br","729.764.020-43"),
        ("24104708360019","Filipe Soares da Silva Gil","filipe.24104708360019@faeterj-rio.edu.br","584.588.540-07"),
        ("24104708360071","Hugo de Souza Mota","hugo.24104708360071@faeterj-rio.edu.br","649.107.470-60"),
        ("24104708360036","Jakeline Brenda Ramos de Barros","jakeline.24104708360036@faeterj-rio.edu.br","335.869.600-69"),
        ("24104708360063","Luiz Gustavo Coelho Xavier","luiz.24104708360063@faeterj-rio.edu.br","380.140.130-85");

--Mostrando a tabela alunos
SELECT * FROM alunos;

--Alterando o valor do cpf buscando do aluno com a matricula escolhida
UPDATE alunos
SET cpf = "107.583.950-51"
WHERE matricula = "24104708360030";

SELECT * FROM alunos;

--Deletando o aluno com a matricula escolhida
DELETE FROM alunos
WHERE matricula = "24104708360063";

SELECT * FROM alunos;

--Criando a tabela de disciplinas
CREATE TABLE disciplinas (
  sigla VARCHAR(5),
  nome VARCHAR(64),
  carga_horaria INT,
  periodo INT,
  limete_de_falta INT
);

--Inserindo na tabela disciplinas
INSERT INTO disciplinas 
VALUES  ("1ORG","Organização de Computadores",80,1,20),
        ("1MAC","Matemática para Computação",80,1,20),
        ("1FAC","Fundamentos de Algoritmos de Computação",80,1,20),
        ("1MAB","Matemática Básica",80,1,20),
        ("1IAS","INTrodução à Análise de Sistemas",80,1,20),
        ("1LPO","Língua Portuguesa",80,1,20),
        ("1IHM","INTerface Homem-Máquina",40,1,10),
        ("2TPH","Técnicas e Paradigmas Humanos",80,2,20),
        ("2REQ","Engenharia de Requisitos",80,2,20),
        ("2CAW","Construção de Aplicações WEB",80,2,20),
        ("2FPR","Fundamentos de Programação",80,2,20),
        ("2LES","Língua Estrangeira",40,2,10),
        ("2MPA","Métodos e Processos Administrativos",40,2,10),
        ("2SOP","Fundamentos de Sistemas Operacionais",80,2,20),
        ("2CAL","Cálculo",80,2,20),
        ("3POB","Programação Orientada a Objetos Básica",80,3,20),
        ("3PBD","Projeto de Banco de Dados",80,3,20),
        ("3DAW","Desenvolvimento de Tecnologias WEB",80,3,20),
        ("3ALG","Álgebra",80,3,20),
        ("3ESD","Estrutura de Dados",80,3,20),
        ("3RSD","Fundamentos de Redes e Sistemas Distribuídos",80,3,20);

--Mostrando a tabela disciplinas
SELECT * FROM disciplinas;
