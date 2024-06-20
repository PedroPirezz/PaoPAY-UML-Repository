CREATE DATABASE PaoPay;

USE PaoPay;

CREATE TABLE Usuario (
    IDusuario INT PRIMARY KEY,
    Nome VARCHAR(45),
    CPF VARCHAR(11),
    Email VARCHAR(45),
    Login VARCHAR(45),
    Senha VARCHAR(20)
);

CREATE TABLE Estoque (
    idProduto INT PRIMARY KEY,
    Quantidade INT
);

CREATE TABLE Produto (
    IdProduto INT PRIMARY KEY,
    Nome VARCHAR(100),
    Preco DECIMAL(10,2),
    Descricao TEXT,
    Quantidade INT,
    Estoque_idProduto INT,
    Venda_IdVenda INT,
    FOREIGN KEY (Estoque_idProduto) REFERENCES Estoque(idProduto),
    FOREIGN KEY (Venda_IdVenda) REFERENCES Venda(IdVenda)
);

CREATE TABLE ResumoFinanceiro (
    IdResumo INT PRIMARY KEY,
    TotalVendas DECIMAL(10,2),
    Despesas DECIMAL(10,2),
    LucroLiquido DECIMAL(10,2),
    PendenciasClientes INT,
    DataResumo DATE
);

CREATE TABLE Venda (
    IdVenda INT PRIMARY KEY,
    DataVenda DATE,
    ValorTotal DECIMAL(10,2),
    Usuario_IDusuario INT,
    ResumoFinanceiro_IdResumo INT,
    PendenciaFinanceira_IdPendencia INT,
    FOREIGN KEY (Usuario_IDusuario) REFERENCES Usuario(IDusuario),
    FOREIGN KEY (ResumoFinanceiro_IdResumo) REFERENCES ResumoFinanceiro(IdResumo),
    FOREIGN KEY (PendenciaFinanceira_IdPendencia) REFERENCES PendenciaFinanceira(IdPendencia)
);

CREATE TABLE DetalhesVenda (
    IdDetalhe INT PRIMARY KEY,
    Quantidade INT,
    PrecoUnitario DECIMAL(10,2),
    ValorTotalItem DECIMAL(10,2),
    NomeProduto VARCHAR(45),
    DetalhesVenda VARCHAR(45),
    Venda_IdVenda INT,
    Produto_IdProduto INT,
    FOREIGN KEY (Venda_IdVenda) REFERENCES Venda(IdVenda),
    FOREIGN KEY (Produto_IdProduto) REFERENCES Produto(IdProduto)
);

CREATE TABLE PendenciaFinanceira (
    IdPendencia INT PRIMARY KEY,
    Valor DECIMAL(10,2),
    DataPendencia DATE,
    PedidoPagamento INT,
    LinkPagamento VARCHAR(255)
);

