
CREATE TABLE Reserva (
codReserva VARCHAR(20) PRIMARY KEY,
formaPagamento VARCHAR(10),
Status VARCHAR(10),
codFuncionario VARCHAR(20),
codCliente VARCHAR(20),
FOREIGN KEY(codFuncionario) REFERENCES Funcionário_Gerente_Recepcionista (codFuncionario),
FOREIGN KEY(codCliente) REFERENCES Cliente (codCliente)
);

CREATE TABLE Quarto (
codQuarto VARCHAR(30) PRIMARY KEY,
valorDiaria INTEGER(10),
qtdHospede INTEGER,
tipoQuarto VARCHAR(10),
numQuarto INTEGER,
codReserva VARCHAR(30),
dataChegada VARCHAR(20),
dataSaida VARCHAR(20),
FOREIGN KEY(codReserva) REFERENCES Reserva (codReserva)
);

CREATE TABLE Funcionario(
codFuncionario VARCHAR(20) PRIMARY KEY,
tipoFuncionario VARCHAR(15),
Nome VARCHAR(50),
Login VARCHAR(15),
Senha VARCHAR(10)
);

CREATE TABLE Dependente (
Nome VARCHAR(10),
codDep VARCHAR(20) PRIMARY KEY,
codFuncionario VARCHAR(20),
FOREIGN KEY (codFuncionario) REFERENCES Funcionario_Gerente_Recepcionista (codFuncionario)
);

CREATE TABLE Despesas (
codConsumo varchar(20) PRIMARY KEY,
data VARCHAR(20),
valorConsumido INTEGER,
codCliente VARCHAR(20),
FOREIGN KEY(codCliente) REFERENCES Cliente (codCliente)
);

CREATE TABLE Cliente (
email VARCHAR(30),
codCliente VARCHAR(20) PRIMARY KEY,
nome VARCHAR(50),
RG CHAR(11),
Rua VARCHAR(30),
Cidade VARCHAR(10),
numRua CHAR(4)
);

CREATE TABLE Telefone (
codTelefone INTEGER PRIMARY KEY,
telefonePri INTEGER,
telefoneSec INTEGER,
codCliente VARCHAR(20),
FOREIGN KEY (codCliente) REFERENCES Cliente (codCliente)
);

CREATE TABLE FDependentes (
codFuncionario VARCHAR(20),
fcodDep VARCHAR(20),
FOREIGN KEY(codFuncionario) REFERENCES Funcionário_Gerente_Recepcionista (codFuncionario),
FOREIGN KEY(fcodDep) REFERENCES Dependente (codDep)
);


