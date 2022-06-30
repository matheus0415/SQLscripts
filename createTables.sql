
CREATE TABLE Reserva (
codReserva VARCHAR(10) PRIMARY KEY,
formaPagamento VARCHAR(10),
Status VARCHAR(10),
dataChegada VARCHAR(10),
dataSaida VARCHAR(10),
codFuncionario VARCHAR(10),
codCliente VARCHAR(10),
FOREIGN KEY(codFuncionario) REFERENCES Funcionário_Gerente_Recepcionista (codFuncionario),
FOREIGN KEY(codCliente) REFERENCES Cliente (codCliente)
);

CREATE TABLE Quarto (
codQuarto VARCHAR(10) PRIMARY KEY,
valorDiaria VARCHAR(10),
qtdHospede VARCHAR(10),
tipoQuarto VARCHAR(10),
numQuarto VARCHAR(10),
codReserva VARCHAR(10),
FOREIGN KEY(codReserva) REFERENCES Reserva (codReserva)
);

CREATE TABLE Funcionário_Gerente_Recepcionista (
codFuncionario VARCHAR(10) PRIMARY KEY,
tipoFuncionario VARCHAR(10),
Nome VARCHAR(10),
Login VARCHAR(10),
Senha VARCHAR(10)
);

CREATE TABLE Dependente (
Nome VARCHAR(10),
codDep VARCHAR(10) PRIMARY KEY
);

CREATE TABLE Despesas (
data VARCHAR(10),
codConsumo VARCHAR(10) PRIMARY KEY,
valorConsumido VARCHAR(10),
codCliente VARCHAR(10),
FOREIGN KEY(codCliente) REFERENCES Cliente (codCliente)
);

CREATE TABLE Cliente (
email VARCHAR(10),
codCliente VARCHAR(10) PRIMARY KEY,
nome VARCHAR(10),
RG VARCHAR(10),
Rua VARCHAR(10),
Cidade VARCHAR(10),
numRua VARCHAR(10)
);

CREATE TABLE Telefone (
Telefone_PK INTEGER PRIMARY KEY,
Telefone VARCHAR(10),
codCliente_FK VARCHAR(),
FOREIGN KEY(codCliente_FK) REFERENCES Cliente (codCliente)
);

CREATE TABLE Possui (
codFuncionario VARCHAR(10),
codDep VARCHAR(10),
FOREIGN KEY(codFuncionario) REFERENCES Funcionário_Gerente_Recepcionista (codFuncionario),
FOREIGN KEY(codDep) REFERENCES Dependente (codDep)
);


