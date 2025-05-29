CREATE DATABASE SistemaSlinicaEstetica;
USE SistemaSlinicaEstetica;

-- Tabela Cliente
CREATE TABLE Cliente (
    IDCliente INT PRIMARY KEY,
    Nome VARCHAR(100),
    Cpf VARCHAR(14),
    Telefone VARCHAR(20),
    Email VARCHAR(100),
    Credito FLOAT
);

-- Tabela Pagamento
CREATE TABLE Pagamento (
    IDPagamento INT PRIMARY KEY,
    Valor FLOAT,
    CreditoGerado FLOAT
);

-- Tabela Especialidade
CREATE TABLE Especialidade (
    IDEspecialidade INT PRIMARY KEY,
    Nome VARCHAR(100)
);

-- Tabela Servico
CREATE TABLE Servico (
    IDServico INT PRIMARY KEY,
    IDEspecialidade INT,
    Nome VARCHAR(100),
    Duracao INT,
    Valor FLOAT,
    FOREIGN KEY (IDEspecialidade) REFERENCES Especialidade(IDEspecialidade)
);

-- Tabela Profissional
CREATE TABLE Profissional (
    IDProfissional INT PRIMARY KEY,
    IDServico INT,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Telefone VARCHAR(20),
    FOREIGN KEY (IDServico) REFERENCES Servico(IDServico)
);

-- Tabela ProfissionalEspecialidades (tabela associativa N:N)
CREATE TABLE ProfissionalEspecialidades (
    IDPEspecialidades INT PRIMARY KEY,
    IDProfissional INT,
    IDEspecialidade INT,
    FOREIGN KEY (IDProfissional) REFERENCES Profissional(IDProfissional),
    FOREIGN KEY (IDEspecialidade) REFERENCES Especialidade(IDEspecialidade)
);

-- Tabela Horarios
CREATE TABLE Horarios (
    IDHorarios INT PRIMARY KEY,
    DiaSemana VARCHAR(20),
    Hora INT
);

-- Tabela HorariosProfissional (tabela associativa N:N)
CREATE TABLE HorariosProfissional (
    IDPHorario INT PRIMARY KEY,
    IDProfissional INT,
    IDHorarios INT,
    FOREIGN KEY (IDProfissional) REFERENCES Profissional(IDProfissional),
    FOREIGN KEY (IDHorarios) REFERENCES Horarios(IDHorarios)
);

-- Tabela Reserva
CREATE TABLE Reserva (
    IDReserva INT PRIMARY KEY,
    IDPagamento INT,
    IDCliente INT,
    IDServico INT,
    IDProfissional INT,
    DataHoraInicio DATETIME,
    DataHoraFim DATETIME,
    Status VARCHAR(50),
    FOREIGN KEY (IDPagamento) REFERENCES Pagamento(IDPagamento),
    FOREIGN KEY (IDCliente) REFERENCES Cliente(IDCliente),
    FOREIGN KEY (IDServico) REFERENCES Servico(IDServico),
    FOREIGN KEY (IDProfissional) REFERENCES Profissional(IDProfissional)
);

-- Tabela FilaDeEspera
CREATE TABLE FilaDeEspera (
    IDFila INT PRIMARY KEY,
    IDCliente INT,
    IDServico INT,
    DataHoraEntrada DATETIME,
    FOREIGN KEY (IDCliente) REFERENCES Cliente(IDCliente),
    FOREIGN KEY (IDServico) REFERENCES Servico(IDServico)
);

-- Tabela Pacote
CREATE TABLE Pacote (
    IDPacote INT PRIMARY KEY,
    NomePacote VARCHAR(100),
    ValorPacote FLOAT
);

-- Tabela PacoteServicos (tabela associativa N:N)
CREATE TABLE PacoteServicos (
    IDSPacote INT PRIMARY KEY,
    IDPacote INT,
    IDServico INT,
    FOREIGN KEY (IDPacote) REFERENCES Pacote(IDPacote),
    FOREIGN KEY (IDServico) REFERENCES Servico(IDServico)
);
