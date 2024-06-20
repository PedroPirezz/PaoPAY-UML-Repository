USE PaoPay;


INSERT INTO Usuario (IDusuario, Nome, CPF, Email, Login, Senha) VALUES
(1, 'João Silva', '12345678901', 'joao.silva@.com', 'joaosilva', '123'),
(2, 'Maria Oliveira', '23456789012', 'maria.oliveira@.com', 'mariaoliveira', '456'),
(3, 'Carlos Souza', '34567890123', 'carlos.souza@.com', 'carlossouza', '789');


INSERT INTO Estoque (idProduto, Quantidade) VALUES
(1, 100),
(2, 200),
(3, 150);


INSERT INTO Produto (IdProduto, Nome, Preco, Descricao, Quantidade, Estoque_idProduto, Venda_IdVenda) VALUES
(1, 'Pão Francês', 0.50, 'Pão crocante e fresco', 100, 1, NULL),
(2, 'Pão de Queijo', 1.00, 'Pão de queijo mineiro', 200, 2, NULL),
(3, 'Baguete', 1.50, 'Baguete francesa', 150, 3, NULL);


INSERT INTO ResumoFinanceiro (IdResumo, TotalVendas, Despesas, LucroLiquido, PendenciasClientes, DataResumo) VALUES
(1, 500.00, 100.00, 400.00, 2, '2024-06-01'),
(2, 1000.00, 200.00, 800.00, 1, '2024-06-02'),
(3, 750.00, 150.00, 600.00, 3, '2024-06-03');


INSERT INTO Venda (IdVenda, DataVenda, ValorTotal, Usuario_IDusuario, ResumoFinanceiro_IdResumo, PendenciaFinanceira_IdPendencia) VALUES
(1, '2024-06-10', 50.00, 1, 1, NULL),
(2, '2024-06-11', 100.00, 2, 2, NULL),
(3, '2024-06-12', 75.00, 3, 3, NULL);


INSERT INTO DetalhesVenda (IdDetalhe, Quantidade, PrecoUnitario, ValorTotalItem, NomeProduto, Venda_IdVenda, Produto_IdProduto) VALUES
(1, 10, 0.50, 5.00, 'Pão Francês', 1, 1),
(2, 20, 1.00, 20.00, 'Pão de Queijo', 2, 2),
(3, 15, 1.50, 22.50, 'Baguete', 3, 3);


INSERT INTO PendenciaFinanceira (IdPendencia, Valor, DataPendencia, PedidoPagamento, LinkPagamento) VALUES
(1, 50.00, '2024-06-01', 1, 'http://pagamento1.com'),
(2, 100.00, '2024-06-02', 2, 'http://pagamento2.com'),
(3, 75.00, '2024-06-03', 3, 'http://pagamento3.com');

