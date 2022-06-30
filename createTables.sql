
CREATE TABLE Reserva (
codReserva INTEGER PRIMARY KEY,
formaPagamento VARCHAR(10),
Status VARCHAR(10),
codFuncionario INTEGER,
codCliente INTEGER,
FOREIGN KEY(codFuncionario) REFERENCES Funcionário_Gerente_Recepcionista (codFuncionario),
FOREIGN KEY(codCliente) REFERENCES Cliente (codCliente)
);

CREATE TABLE Quarto (
codQuarto INTEGER(10) PRIMARY KEY,
valorDiaria INTEGER(10),
qtdHospede INTEGER,
tipoQuarto VARCHAR(10),
numQuarto INTEGER,
codReserva INTEGER,
dataChegada DATE,
dataSaida DATE,
FOREIGN KEY(codReserva) REFERENCES Reserva (codReserva)
);

CREATE TABLE Funcionario_Gerente_Recepcionista (
codFuncionario INTEGER(10) PRIMARY KEY,
tipoFuncionario VARCHAR(15),
Nome VARCHAR(50),
Login VARCHAR(15),
Senha INTEGER
);

CREATE TABLE Dependente (
Nome VARCHAR(10),
codDep INTEGER PRIMARY KEY,
codFuncionario INTEGER,
FOREIGN KEY (codFuncionario) REFERENCES Funcionario_Gerente_Recepcionista (codFuncionario)
);

CREATE TABLE Despesas (
codConsumo INTEGER PRIMARY KEY,
data DATE,
valorConsumido INTEGER,
codCliente INTEGER,
FOREIGN KEY(codCliente) REFERENCES Cliente (codCliente)
);

CREATE TABLE Cliente (
codCliente INTEGER PRIMARY KEY,
email VARCHAR(30),
nome VARCHAR(50),
RG CHAR(11),
Rua VARCHAR(30),
Cidade VARCHAR(10),
numRua CHAR(4)
);

CREATE TABLE Telefone (
Telefone_PK INTEGER PRIMARY KEY,
Telefone CHAR(11),
codCliente INTEGER,
FOREIGN KEY (codCliente) REFERENCES Cliente (codCliente)
);

CREATE TABLE FuncionarioDependentes (
codFuncionario INTEGER,
codDep INTEGER,
FOREIGN KEY(codFuncionario) REFERENCES Funcionário_Gerente_Recepcionista (codFuncionario),
FOREIGN KEY(codDep) REFERENCES Dependente (codDep)
);


