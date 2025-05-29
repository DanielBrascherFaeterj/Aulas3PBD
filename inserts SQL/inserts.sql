INSERT INTO Cliente (IDCliente, Nome, Cpf, Telefone, Email, Credito) VALUES
(1, 'Ana Silva', '123.456.789-00', '11999990001', 'ana@gmail.com', 50.00),
(2, 'Bruno Souza', '987.654.321-00', '11999990002', 'bruno@gmail.com', 0.00),
(3, 'Carla Mendes', '456.789.123-00', '11999990003', 'carla@gmail.com', 20.00);

INSERT INTO Especialidade (IDEspecialidade, Nome) VALUES
(1, 'Estética Facial'),
(2, 'Estética Corporal'),
(3, 'Massagem Terapêutica');

INSERT INTO Servico (IDServico, IDEspecialidade, Nome, Duracao, Valor) VALUES
(1, 1, 'Limpeza de Pele', 60, 120.00),
(2, 2, 'Drenagem Linfática', 50, 100.00),
(3, 3, 'Massagem Relaxante', 60, 150.00);

INSERT INTO Profissional (IDProfissional, IDServico, Nome, Email, Telefone) VALUES
(1, 1, 'Mariana Lima', 'mariana@empresa.com', '11988880001'),
(2, 2, 'Carlos Pires', 'carlos@empresa.com', '11988880002'),
(3, 3, 'Fernanda Rocha', 'fernanda@empresa.com', '11988880003');

INSERT INTO ProfissionalEspecialidades (IDPEspecialidades, IDProfissional, IDEspecialidade) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 1, 2);  -- Mariana também tabalha com estética corporal

INSERT INTO Horarios (IDHorarios, DiaSemana, Hora) VALUES
(1, 'Segunda-feira', 9),
(2, 'Terça-feira', 14),
(3, 'Quarta-feira', 16),
(4, 'Quinta-feira', 10),
(5, 'Sexta-feira', 15);

INSERT INTO HorariosProfissional (IDPHorario, IDProfissional, IDHorarios) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 2, 2),
(4, 2, 4),
(5, 3, 5);

INSERT INTO Pagamento (IDPagamento, Valor, CreditoGerado) VALUES
(1, 120.00, 0.00),
(2, 100.00, 0.00),
(3, 150.00, 10.00);

INSERT INTO Reserva (IDReserva, IDPagamento, IDCliente, IDServico, IDProfissional, DataHoraInicio, DataHoraFim, Status) VALUES
(1, 1, 1, 1, 1, '2025-06-01 09:00:00', '2025-06-01 10:00:00', 'Concluído'),
(2, 2, 2, 2, 2, '2025-06-02 14:00:00', '2025-06-02 14:50:00', 'Concluído'),
(3, 3, 3, 3, 3, '2025-06-03 15:00:00', '2025-06-03 16:00:00', 'Agendado');

INSERT INTO FilaDeEspera (IDFila, IDCliente, IDServico, DataHoraEntrada) VALUES
(1, 2, 1, '2025-06-01 08:30:00'),
(2, 3, 2, '2025-06-02 13:30:00');

INSERT INTO Pacote (IDPacote, NomePacote, ValorPacote) VALUES
(1, 'Pacote Relax Total', 400.00),
(2, 'Pacote Estética Completa', 500.00);

INSERT INTO PacoteServicos (IDSPacote, IDPacote, IDServico) VALUES
(1, 1, 3),  -- Massagem do pacote "Relax Total"
(2, 1, 2),  -- Drenagem do pacote "Relax Total"
(3, 2, 1),  -- Limpeza de Pele do "Estética Completa"
(4, 2, 2);  -- Drenagem Linfática do pacote "Estética Completa"
