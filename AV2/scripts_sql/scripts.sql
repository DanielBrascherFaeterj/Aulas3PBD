-- INSERT
INSERT INTO Cliente (IDCliente, Nome, Cpf, Telefone, Email)
VALUES (1, 'João Silva', '12345678900', '21988887777', 'joao@email.com');

-- UPDATE
UPDATE Cliente
SET Telefone = '21999998888'
WHERE IDCliente = 1;

-- DELETE
DELETE FROM Cliente WHERE IDCliente = 1;

INSERT INTO TipoQuarto (IDTipoQuarto, Descricao, Capacidade)
VALUES (1, 'Quarto com 4 vagas', 4);

UPDATE TipoQuarto
SET Descricao = 'Quarto com 4 vagas e vista para o jardim'
WHERE IDTipoQuarto = 1;

DELETE FROM TipoQuarto WHERE IDTipoQuarto = 1;

INSERT INTO Quarto (IDQuarto, IDTipoQuarto, Numero)
VALUES (1, 1, 101);

-- UPDATE
UPDATE Quarto
SET Numero = 102
WHERE IDQuarto = 1;

DELETE FROM Quarto WHERE IDQuarto = 1;

INSERT INTO Vaga (IDVaga, IDQuarto, Descricao)
VALUES (1, 1, 'Beliche inferior perto da janela');

UPDATE Vaga
SET Descricao = 'Beliche superior ao lado da porta'
WHERE IDVaga = 1;

DELETE FROM Vaga WHERE IDVaga = 1;

INSERT INTO Peculiaridade (IDPeculiaridade, Nome, Descricao)
VALUES (1, 'Perto da Janela', 'Cama posicionada ao lado da janela');

UPDATE Peculiaridade
SET Descricao = 'Cama localizada próxima da janela principal'
WHERE IDPeculiaridade = 1;

DELETE FROM Peculiaridade WHERE IDPeculiaridade = 1;

INSERT INTO VagaPeculiaridade (IDVagaP, IDPeculiaridade, IDVaga)
VALUES (1, 1, 1);

UPDATE VagaPeculiaridade
SET IDPeculiaridade = 2
WHERE IDVagaP = 1;

DELETE FROM VagaPeculiaridade WHERE IDVagaP = 1;

INSERT INTO Reserva (IDReserva, IDCliente, DataInicio, DataFim, DataReserva, Status, Tipo)
VALUES (1, 1, '2025-07-10 12:00:00', '2025-07-15 12:00:00', NOW(), 'ativa', 'vaga');

UPDATE Reserva
SET Status = 'cancelada'
WHERE IDReserva = 1;

DELETE FROM Reserva WHERE IDReserva = 1;

INSERT INTO ReservaVaga (IDReservaV, IDReserva, IDVaga)
VALUES (1, 1, 1);

UPDATE ReservaVaga
SET IDVaga = 2
WHERE IDReservaV = 1;

DELETE FROM ReservaVaga WHERE IDReservaV = 1;

INSERT INTO Pagamento (IDPagamento, IDReserva, Valor, Status)
VALUES (1, 1, 250.00, 'aprovado');

UPDATE Pagamento
SET Status = 'pendente'
WHERE IDPagamento = 1;

DELETE FROM Pagamento WHERE IDPagamento = 1;

--PREENCHENDO AS TABELAS PRA TESTAR

INSERT INTO Cliente (IDCliente, Nome, Cpf, Telefone, Email)
VALUES (1, 'João Silva', '12345678900', '21988887777', 'joao@email.com');

-- TIPOQUARTO
INSERT INTO TipoQuarto (IDTipoQuarto, Descricao, Capacidade)
VALUES (1, 'Quarto com 4 vagas', 4);

-- QUARTO
INSERT INTO Quarto (IDQuarto, IDTipoQuarto, Numero)
VALUES (1, 1, 101);

-- VAGA
INSERT INTO Vaga (IDVaga, IDQuarto, Descricao)
VALUES (1, 1, 'Beliche inferior perto da janela');

-- PECULIARIDADE
INSERT INTO Peculiaridade (IDPeculiaridade, Nome, Descricao)
VALUES (1, 'Perto da Janela', 'Cama posicionada ao lado da janela');

-- VAGAPECULIARIDADE
INSERT INTO VagaPeculiaridade (IDVagaP, IDPeculiaridade, IDVaga)
VALUES (1, 1, 1);

-- RESERVA
INSERT INTO Reserva (IDReserva, IDCliente, DataInicio, DataFim, DataReserva, Status, Tipo)
VALUES (1, 1, '2025-07-10 12:00:00', '2025-07-15 12:00:00', NOW(), 'ativa', 'vaga');

-- RESERVAVAGA
INSERT INTO ReservaVaga (IDReservaV, IDReserva, IDVaga)
VALUES (1, 1, 1);

-- PAGAMENTO
INSERT INTO Pagamento (IDPagamento, IDReserva, Valor, Status)
VALUES (1, 1, 250.00, 'aprovado');

-- TODOS OS REGISTROS
SELECT * FROM Cliente;

-- REGISTRO ESPECÍFICO
SELECT * FROM Cliente WHERE IDCliente = 1;

SELECT * FROM TipoQuarto;
SELECT * FROM Quarto;
SELECT * FROM Vaga;
SELECT * FROM Peculiaridade;
SELECT * FROM VagaPeculiaridade;
SELECT * FROM Reserva;
SELECT * FROM ReservaVaga;
SELECT * FROM Pagamento;

SELECT * FROM Reserva WHERE IDReserva = 1;

SELECT v.*
FROM Vaga v
LEFT JOIN ReservaVaga rv ON v.IDVaga = rv.IDVaga
LEFT JOIN Reserva r ON rv.IDReserva = r.IDReserva
    AND '2025-07-12 12:00:00' BETWEEN r.DataInicio AND r.DataFim
WHERE r.IDReserva IS NULL;

SELECT v.*, r.IDReserva, r.DataInicio, r.DataFim
FROM Vaga v
JOIN ReservaVaga rv ON v.IDVaga = rv.IDVaga
JOIN Reserva r ON rv.IDReserva = r.IDReserva
WHERE '2025-07-12 12:00:00' BETWEEN r.DataInicio AND r.DataFim;
