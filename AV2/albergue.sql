CREATE TABLE Cliente (
    IDCliente INT PRIMARY KEY,
    Nome VARCHAR(100),
    Cpf VARCHAR(20),
    Telefone VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE TipoQuarto (
    IDTipoQuarto INT PRIMARY KEY,
    Descricao VARCHAR(100),
    Capacidade INT
);

CREATE TABLE Quarto (
    IDQuarto INT PRIMARY KEY,
    IDTipoQuarto INT,
    Numero INT,
    FOREIGN KEY (IDTipoQuarto) REFERENCES TipoQuarto(IDTipoQuarto)
);

CREATE TABLE Vaga (
    IDVaga INT PRIMARY KEY,
    IDQuarto INT,
    Descricao VARCHAR(200),
    FOREIGN KEY (IDQuarto) REFERENCES Quarto(IDQuarto)
);

CREATE TABLE Peculiaridade (
    IDPeculiaridade INT PRIMARY KEY,
    Nome VARCHAR(100),
    Descricao VARCHAR(200)
);

CREATE TABLE VagaPeculiaridade (
    IDVagaP INT PRIMARY KEY,
    IDPeculiaridade INT,
    IDVaga INT,
    FOREIGN KEY (IDPeculiaridade) REFERENCES Peculiaridade(IDPeculiaridade),
    FOREIGN KEY (IDVaga) REFERENCES Vaga(IDVaga)
);

CREATE TABLE Reserva (
    IDReserva INT PRIMARY KEY,
    IDCliente INT,
    DataInicio DATETIME,
    DataFim DATETIME,
    DataReserva DATETIME,
    Status VARCHAR(50),     
    Tipo VARCHAR(50),       
    FOREIGN KEY (IDCliente) REFERENCES Cliente(IDCliente)
);

CREATE TABLE ReservaVaga (
    IDReservaV INT PRIMARY KEY,
    IDReserva INT,
    IDVaga INT,
    FOREIGN KEY (IDReserva) REFERENCES Reserva(IDReserva),
    FOREIGN KEY (IDVaga) REFERENCES Vaga(IDVaga)
);

CREATE TABLE Pagamento (
    IDPagamento INT PRIMARY KEY,
    IDReserva INT,
    Valor FLOAT,
    Status VARCHAR(50),     
    FOREIGN KEY (IDReserva) REFERENCES Reserva(IDReserva)
);