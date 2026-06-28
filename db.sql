CREATE TABLE Usuario (
    id_usuario SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    idade INT NOT NULL
);

CREATE TABLE Colaborador (
    id_colaborador SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL UNIQUE,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Participante (
    id_participante SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL UNIQUE,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Evento (
    id_evento SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    descricao TEXT,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    local_evento VARCHAR(200) NOT NULL,
    id_organizador INT NOT NULL,
    FOREIGN KEY (id_organizador) REFERENCES Colaborador(id_colaborador)
);

CREATE TABLE Atracao (
    id_atracao SERIAL PRIMARY KEY,
    nome_atracao VARCHAR(150) NOT NULL,
    descricao TEXT,
    horario_inicio TIME NOT NULL,
    horario_termino TIME NOT NULL,
    id_evento INT NOT NULL,
    FOREIGN KEY (id_evento) REFERENCES Evento(id_evento)
);

CREATE TABLE Movimentacao_Orcamental (
    id_movimentacao SERIAL PRIMARY KEY,
    tipo VARCHAR(20) NOT NULL,
    data_movimentacao DATE NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT,
    id_evento INT NOT NULL,
    FOREIGN KEY (id_evento) REFERENCES Evento(id_evento)
);

CREATE TABLE Tarefa (
    id_tarefa SERIAL PRIMARY KEY,
    data_prazo DATE NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT,
    id_evento INT NOT NULL,
    id_colaborador INT NOT NULL,
    FOREIGN KEY (id_evento) REFERENCES Evento(id_evento),
    FOREIGN KEY (id_colaborador) REFERENCES Colaborador(id_colaborador)
);

CREATE TABLE Servico (
    id_servico SERIAL PRIMARY KEY,
    nome_responsavel VARCHAR(100) NOT NULL,
    nome_empresa VARCHAR(150),
    valor DECIMAL(10,2) NOT NULL,
    descricao TEXT,
    telefone VARCHAR(20),
    email VARCHAR(150)
);

CREATE TABLE Cargo (
    id_cargo SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    quantidade_vagas INT NOT NULL,
    id_evento INT NOT NULL,
    FOREIGN KEY (id_evento) REFERENCES Evento(id_evento)
);

CREATE TABLE Reuniao (
    id_reuniao SERIAL PRIMARY KEY,
    tema VARCHAR(150) NOT NULL,
    descricao TEXT,
    data_reuniao DATE NOT NULL,
    horario_inicio TIME NOT NULL,
    horario_termino TIME NOT NULL,
    id_evento INT NOT NULL,
    FOREIGN KEY (id_evento) REFERENCES Evento(id_evento)
);

CREATE TABLE Material (
    id_material SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    valor_total DECIMAL(10,2),
    valor_unitario DECIMAL(10,2),
    qtd_necessaria INT NOT NULL,
    qtd_atual INT NOT NULL,
    id_evento INT NOT NULL,
    FOREIGN KEY (id_evento) REFERENCES Evento(id_evento)
);

CREATE TABLE Fila_Espera (
    id_fila SERIAL PRIMARY KEY,
    posicao_fila INT NOT NULL,
    qtd_vagas INT NOT NULL,
    id_participante INT NOT NULL,
    id_evento INT NOT NULL,
    FOREIGN KEY (id_participante) REFERENCES Participante(id_participante),
    FOREIGN KEY (id_evento) REFERENCES Evento(id_evento)
);

CREATE TABLE Feedback (
    id_feedback SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    mensagem TEXT NOT NULL,
    nota INT NOT NULL CHECK (nota BETWEEN 1 AND 5),
    id_evento INT NOT NULL,
    id_participante INT NOT NULL,
    FOREIGN KEY (id_evento) REFERENCES Evento(id_evento),
    FOREIGN KEY (id_participante) REFERENCES Participante(id_participante)
);

CREATE TABLE Evento_Servico (
    id_evento INT NOT NULL,
    id_servico INT NOT NULL,
    PRIMARY KEY (id_evento, id_servico),
    FOREIGN KEY (id_evento) REFERENCES Evento(id_evento),
    FOREIGN KEY (id_servico) REFERENCES Servico(id_servico)
);

CREATE TABLE Colaborador_Evento (
    id_colaborador INT NOT NULL,
    id_evento INT NOT NULL,
    PRIMARY KEY (id_colaborador, id_evento),
    FOREIGN KEY (id_colaborador) REFERENCES Colaborador(id_colaborador),
    FOREIGN KEY (id_evento) REFERENCES Evento(id_evento)
);

CREATE TABLE Colaborador_Evento_Cargo (
    id_colaborador INT NOT NULL,
    id_evento INT NOT NULL,
    id_cargo INT NOT NULL,
    PRIMARY KEY (id_colaborador, id_evento, id_cargo),
    FOREIGN KEY (id_colaborador) REFERENCES Colaborador(id_colaborador),
    FOREIGN KEY (id_evento) REFERENCES Evento(id_evento),
    FOREIGN KEY (id_cargo) REFERENCES Cargo(id_cargo)
);