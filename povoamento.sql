INSERT INTO Usuario (nome, email, telefone, idade) VALUES
('Anna Liz', 'anna.liz@gmail.com', '88990000001', 19),
('Kauan Ferreira', 'kauan.ferreira@gmail.com', '88990000002', 19),
('Gabriel Fernandes', 'gabriel@gmail.com', '88990000003', 19),
('Doja Cat', 'doja.cat@gmail.com', '88990000004', 21),
('Elon Musk', 'elon.musk@gmail.com', '88990000005', 20),
('Cristiano Ronaldo', 'ronaldo@gmail.com', '88990000006', 27),
('Ivete Sangalo', 'ivete@gmail.com', '88990000007', 23),
('Endrick', 'endrick@gmail.com', '88990000008', 31),
('Vinicius Junior', 'vinijr@gmail.com', '88990000009', 26),
('Sabrina Carpenter', 'ohboy@gmail.com', '88990000010', 29),
('Larissa Manoela', 'larissa@gmail.com', '88990000011', 20),
('Beyonce', 'beyonce@gmail.com', '88990000012', 22),
('Rihanna', 'rihanna@gmail.com', '88990000013', 21),
('Michael Jackson', 'hihi@gmail.com', '88990000014', 23),
('Lady Gaga', 'ladygaga@gmail.com', '88990000015', 24),
('Bruno Mars', 'bruninho@gmail.com', '88990000016', 25),
('Shakira', 'shakira@gmail.com', '88990000017', 20),
('Taylor Swift', 'taylor@gmail.com', '88990000018', 22),
('Eminem', 'eminem@gmail.com', '88990000019', 23),
('Winderson Nunes', 'winderson@gmail.com', '88990000020', 24);


INSERT INTO Colaborador (id_usuario) VALUES
(1),(2),(3),(4),(5),(6),(7),(8),(9),(10);


INSERT INTO Participante (id_usuario) VALUES
(11),(12),(13),(14),(15),(16),(17),(18),(19),(20);


INSERT INTO Evento
(nome, descricao, data_inicio, data_fim, local_evento, id_organizador)
VALUES
('Witisc 2026', 'Evento de tecnologia',
 '2026-08-10', '2026-08-11', 'Sala Multiuso', 1),

('Festival Cultural', 'Festival com apresentações artísticas',
 '2026-07-05', '2026-07-07', 'Praça Central', 2),

('Semana Acadêmica', 'Palestras e minicursos universitários',
 '2026-10-15', '2026-10-18', 'UFC Quixada', 3),

('Feira das Profissões', 'Networking e empreendedorismo',
 '2027-03-01', '2027-03-02', 'Centro de Eventos', 4),

('São João 2026', 'Festival Junino com comida e show musical',
 '2026-06-24', '2026-06-24', 'Quixeramobim', 5),

('Workshop Python', 'Programação Python', 
'2026-09-10', '2026-09-11', 'Laboratório 1', 6),

('Congresso Saúde', 'Evento da área da saúde', 
'2026-11-05', '2026-11-07', 'Auditório Central', 7),

('Feira AgroTech', 'Tecnologia agrícola', 
'2026-08-20', '2026-08-22', 'Parque de Exposições', 8),

('Startup Day', 'Empreendedorismo e inovação', 
'2027-04-10', '2027-04-11', 'Centro de Inovação', 9),

('Mostra Científica', 'Apresentação de pesquisas', 
'2026-12-01', '2026-12-02', 'UFC Quixadá', 10);


INSERT INTO Atracao
(nome_atracao, descricao, horario_inicio, horario_termino, id_evento)
VALUES
('Palestra IA', 'Tendências em Inteligência Artificial', '10:00', '15:30', 1),
('Show Regional', 'Apresentação musical', '19:00', '21:00', 2),
('Minicurso SQL', 'Banco de dados avançado', '14:00', '17:00', 3),
('Painel de Startups', 'Empreendedorismo', '10:00', '13:00', 4),
('Quadrilha', 'Dança cultural com os participantes', '19:00', '19:30', 5),
('Oficina Python', 'Introdução ao Python', '08:00', '12:00', 6),
('Palestra Medicina', 'Inovação na Saúde', '09:00', '11:00', 7),
('Exposição Agrícola', 'Novas tecnologias', '10:00', '16:00', 8),
('Pitch de Startups', 'Apresentação de projetos', '14:00', '17:00', 9),
('Sessão de Posters', 'Projetos científicos', '13:00', '18:00', 10);


INSERT INTO Servico
(nome_responsavel, nome_empresa, valor, descricao, telefone, email)
VALUES
('Carlos Mendes', 'Som & Luz LTDA', 3500.00, 'Estrutura de som', '88991000001', 'som&luz@gmail.com'),
('Juliana Rocha', 'Buffet Premium', 5000.00, 'Serviço de alimentação', '88992000002', 'buffet@gmail.com'),
('Ricardo Alves', 'Segurança Total', 2500.00, 'Equipe de segurança', '88993000003', 'seguranca@gmail.com'),
('Fernanda Lima', 'Eventos Decor', 1800.00, 'Decoração', '88994000004', 'decor@gmail.com'),
('Paulo Souza', 'Tech Equipamentos', 4000.00, 'Equipamentos multimídia', '88995000005', 'tech@gmail.com'),
('André Silva', 'Foto Pro', 1500.00, 'Fotografia', '88996000006', 'foto@gmail.com'),
('Márcia Costa', 'Limpeza VIP', 1000.00, 'Limpeza', '88997000007', 'limpeza@gmail.com'),
('Roberto Lima', 'Telão BR', 1800.00, 'Telão LED', '88998000008', 'telao@gmail.com'),
('Luciana Alves', 'Coffee Break Plus', 2200.00, 'Coffee Break', '88999000009', 'coffee@gmail.com'),
('Sérgio Rocha', 'Internet Max', 1200.00, 'Internet para eventos', '88991000010', 'internet@gmail.com');


INSERT INTO Evento_Servico VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);


INSERT INTO Cargo
(nome, descricao, quantidade_vagas, id_evento)
VALUES
('Recepcionista', 'Atendimento ao público', 3, 1),
('Monitor', 'Auxílio aos participantes', 6, 2),
('Coordenador', 'Coordenação das atividades', 2, 3),
('Auxiliar', 'Suporte operacional', 10, 4),
('Diretor de mídias', 'Equipe técnica', 1, 5),
('Instrutor', 'Ministrar oficina', 2, 6),
('Recepcionista Saúde', 'Atendimento', 4, 7),
('Monitor Agro', 'Auxílio aos visitantes', 5, 8),
('Mentor', 'Orientação de startups', 3, 9),
('Avaliador', 'Avaliação científica', 2, 10);


INSERT INTO Tarefa
(data_prazo, titulo, descricao, id_evento, id_colaborador)
VALUES
('2026-07-15', 'Divulgação', 'Criar campanha nas redes sociais', 1, 1),
('2026-06-05', 'Contratar banda', 'Fechar contrato da atração principal', 2, 2),
('2026-10-01', 'Organizar minicursos', 'Definir salas e horários', 3, 3),
('2027-01-15', 'Captar patrocinadores', 'Contato com empresas', 4, 4),

('2026-06-23', 'Preparar infraestrutura', 'Montagem dos equipamentos', 5, 5),
('2026-06-10', 'Contratar atrações musicais', 'Definir e contratar as bandas e artistas que irão se apresentar no evento.', 5, 5),
('2026-06-15', 'Organizar barracas', 'Planejar a distribuição das barracas de comidas típicas e bebidas.', 5, 5),
('2026-06-20', 'Divulgar programação', 'Publicar a programação oficial nas redes sociais e meios de comunicação locais.', 5, 5),
('2026-06-23', 'Montar decoração junina', 'Instalar bandeirinhas, balões decorativos e elementos temáticos do São João.', 5, 5),

('2026-09-01', 'Preparar laboratório', 'Configurar computadores', 6, 6),
('2026-10-25', 'Convidar palestrantes', 'Área da saúde', 7, 7),
('2026-08-10', 'Reservar espaço', 'Parque de exposições', 8, 8),
('2027-03-15', 'Selecionar startups', 'Processo seletivo', 9, 9),
('2026-11-20', 'Montar programação', 'Sessões científicas', 10, 10);


INSERT INTO Reuniao
(tema, descricao, data_reuniao, horario_inicio, horario_termino, id_evento)
VALUES
('Planejamento', 'Definição das atividades', '2026-07-15', '09:00', '10:00', 1),
('Organização', 'Distribuição de tarefas', '2026-06-03', '10:00', '11:00', 2),
('Logística', 'Preparação dos espaços', '2026-10-13', '14:00', '15:00', 3),
('Patrocínio', 'Alinhamento comercial', '2027-01-20', '16:00', '17:00', 4),
('Execução', 'Últimos ajustes', '2026-06-23', '08:00', '09:00', 5),
('Preparação Workshop', 'Definição das oficinas', '2026-09-01', '08:00', '09:00', 6),
('Planejamento Saúde', 'Organização geral', '2026-10-20', '09:00', '10:00', 7),
('Logística Agro', 'Estrutura do evento', '2026-08-01', '14:00', '15:00', 8),
('Captação', 'Busca de investidores', '2027-03-01', '15:00', '16:00', 9),
('Avaliação', 'Definição de critérios', '2026-11-15', '10:00', '11:00', 10);


INSERT INTO Material
(nome, valor_total, valor_unitario, qtd_necessaria, qtd_atual, id_evento)
VALUES
('Crachás', 50.00, 5.00, 10, 8, 1),
('Cadeiras', 300.00, 15.00, 20, 20, 2),
('Projetores', 2000.00, 1000.00, 2, 0, 3),
('Mesas', 200.00, 20.00, 10, 8, 4),
('Cabos de Rede', 60.00, 20.00, 3, 2, 5),
('Computadores', 1500.00, 300.00, 5, 4, 6),
('Banners', 300.00, 30.00, 10, 8, 7),
('Tendas', 1000.00, 200.00, 5, 5, 8),
('Microfones', 600.00, 150.00, 4, 3, 9),
('Painéis', 800.00, 200.00, 4, 4, 10);


INSERT INTO Movimentacao_Orcamental
(tipo, data_movimentacao, valor, titulo, descricao, id_evento)
VALUES
('Entrada', '2026-07-01', 1000.00, 'Patrocínio Master', 'Entrada financeira', 1),
('Despesa', '2026-07-01', 500.00, 'Som', 'Pagamento de fornecedor', 1),
('Entrada', '2026-10-15', 2000.00, 'Ingressos', 'Venda de ingressos', 2),
('Despesa', '2026-10-15', 700.00, 'Segurança', 'Equipe contratada', 3),
('Entrada', '2026-11-01', 5000.00, 'Patrocínios', 'Apoio empresarial', 5),
('Entrada', '2026-09-01', 3000.00, 'Patrocínio Local', 'Apoio financeiro', 6),
('Despesa', '2026-10-20', 1000.00, 'Material', 'Compra de materiais', 7),
('Entrada', '2026-08-05', 2500.00, 'Patrocínio Agro', 'Apoio financeiro', 8),
('Entrada', '2027-03-10', 4000.00, 'Investidores', 'Patrocínio startups', 9),
('Despesa', '2026-11-25', 1200.00, 'Impressão', 'Material gráfico', 10);


INSERT INTO Colaborador_Evento VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);


INSERT INTO Colaborador_Evento_Cargo VALUES
(1,1,1),
(2,2,2),
(3,3,3),
(4,4,4),
(5,5,5),
(6,6,6),
(7,7,7),
(8,8,8),
(9,9,9),
(10,10,10);


INSERT INTO Fila_Espera
(posicao_fila, qtd_vagas, id_participante, id_evento)
VALUES
(1,3,1,1),
(2,3,2,1),
(3,3,3,2),
(4,2,4,3),
(5,1,5,4),
(1,2,6,6),
(2,2,7,7),
(3,1,8,8),
(4,1,9,9),
(5,1,10,10);


INSERT INTO Feedback
(titulo, mensagem, nota, id_evento, id_participante)
VALUES
('Excelente', 'Evento muito organizado.', 5, 1, 1),
('Muito bom', 'Gostei das apresentações.', 4, 2, 2),
('Ótimo conteúdo', 'Aprendi bastante.', 5, 3, 3),
('Bom', 'Poderia ter mais atrações.', 3, 4, 4),
('Fantástico', 'Experiência incrível.', 5, 5, 5),
('Adorei', 'Conteúdo muito útil.', 5, 6, 6),
('Ótima organização', 'Tudo ocorreu bem.', 4, 7, 7),
('Muito interessante', 'Aprendi bastante.', 5, 8, 8),
('Evento inspirador', 'Boas ideias de negócios.', 5, 9, 9),
('Muito bom', 'Apresentações de qualidade.', 4, 10, 10);
