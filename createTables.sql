
CREATE TABLE Reserva (
codReserva VARCHAR(20) PRIMARY KEY,
formaPagamento VARCHAR(10),
Status VARCHAR(10),
codFuncionario VARCHAR(20),
codCli VARCHAR(20),
FOREIGN KEY(codFuncionario) REFERENCES Funcionario (codFuncionario),
FOREIGN KEY(codCli) REFERENCES Cliente (codCliente)
);

CREATE TABLE Quarto (
codQuarto VARCHAR(30) PRIMARY KEY,
valorDiaria INTEGER(10),
qtdHospede INTEGER,
tipoQuarto VARCHAR(10),
numQuarto INTEGER,
codRes VARCHAR(30),
dataChegada VARCHAR(20),
dataSaida VARCHAR(20),
FOREIGN KEY(codRes) REFERENCES Reserva (codReserva)
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
codF VARCHAR(20),
FOREIGN KEY (codF) REFERENCES Funcionario (codFuncionario)
);

CREATE TABLE Despesas (
codConsumo varchar(20) PRIMARY KEY,
data VARCHAR(20),
valorConsumido INTEGER,
codC VARCHAR(20),
FOREIGN KEY(codC) REFERENCES Cliente (codCliente)
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
codTelefone char(5) PRIMARY KEY,
telefonePri INTEGER,
telefoneSec INTEGER,
codCl VARCHAR(20),
FOREIGN KEY (codCl) REFERENCES Cliente (codCliente)
);

CREATE TABLE FDependentes (
codFunc VARCHAR(20),
fcodDep VARCHAR(20),
FOREIGN KEY(codFunc) REFERENCES Funcionario (codFuncionario),
FOREIGN KEY(fcodDep) REFERENCES Dependente (codDep)
);


