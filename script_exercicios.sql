-- 1Liste todos os pedidos com o nome do cliente correspondente.
select clientes.nome,pedidos.id as pedido from pedidos
inner join clientes on pedidos.cliente_id = clientes.id;
-- 2. Quantos pedidos foram feitos no total?
 select count(pedido_id) from itens_pedido;
-- 3. Liste os pedidos feitos após '2016-12-15' com o nome do cliente.
select pedidos.id as pedido, pedidos.data, clientes.nome from pedidos
inner join clientes on pedidos.cliente_id = clientes.id
where pedidos.data > '2016-12-15 23:59:59';
-- 4. Quantos pedidos foram feitos pelo cliente com o nome "Alexandre Santos"?
select count(pedidos.id) as 'numero pedidos', clientes.nome from pedidos
inner join clientes on pedidos.cliente_id=clientes.id
where clientes.nome = 'Alexandre Santos';
-- 5. Liste todos os pedidos e seus respectivos clientes, incluindo pedidos feitos por clientes que foram excluídos da tabela clientes.
select * from pedidos 
left join clientes on clientes.id=pedidos.cliente_id ;
-- 6. Qual o valor total de todos os pedidos feitos até agora?
select sum(valor) from pizzas;
-- 7. Qual o total gasto por cada cliente?
select sum(valor) as valor_total, clientes.nome from pedidos
inner join clientes on clientes.id=pedidos.cliente_id
group by clientes.nome;
-- 8. Liste todos os clientes e seus pedidos feitos no mês de dezembro de 2016.
select clientes.nome, pedidos.id as pedido, pedidos.data, pedidos.valor from clientes
inner join pedidos on pedidos.cliente_id = cliente_id
where pedidos.data between '2016-12-01' and '2016-12-31 23:59:59';
-- 9. Qual o valor médio dos pedidos realizados?
select avg (valor) as media from pedidos;
-- 10. Liste o valor total dos pedidos por cliente, incluindo pedidos feitos por clientes que foram excluídos (nome aparecerá como NULL).
select clientes.id, clientes.nome,
 sum(pedidos.valor)as valor_total,
 count(pedidos.id)as total_pedidos from pedidos
 left join clientes on clientes.id=pedidos.cliente_id 
 group by clientes.id, clientes.nome;
-- 11. Qual o valor do pedido mais caro registrado?
 select max(valor) as 'maior valor' from pizzas;
-- 12. Qual o valor do pedido mais barato registrado?
select min(valor) as 'menor valor' from pizzas;
-- 13. Quantos pedidos cada cliente fez (mesmo que não tenham feito nenhum)?
select count(pedidos.id) as 'pedidos', clientes.nome from pedidos 
left join clientes on clientes.id=pedidos.cliente_id 
group by clientes.nome;
-- 14. Qual o pedido mais caro, exibir o nome do cliente e o valor do pedido.
 select max(valor) as 'maior valor', clientes.nome from pedidos
 inner join clientes on clientes.id=pedidos.cliente_id;
-- 15. Qual a média de pizzas por pedido e quantos pedidos foram feitos?
select count(distinct pedido_id)as total_pedidos, avg (valor) as media_pizzas from itens_pedido;
-- 16. Qual o total de pizzas vendidas e o número de pedidos do cliente "Bruna Dantas"?
select sum(quantidade) as quantidade,count(pedidos.cliente_id)  from itens_pedido
inner join pedidos on itens_pedido.pedido_id=pedidos.id
inner join clientes on pedidos.cliente_id=clientes.id
where nome = 'Bruna Dantas' ;

select * from itens_pedido;
-- 17. Qual o pedido mais caro e o mais barato do cliente "Laura Madureira"?
-- 18. Quantas pizzas cada cliente comprou no total?
-- 19. Qual o pedido mais barato, exibir o nome do cliente e o valor do pedido.
-- 20. Liste todos os clientes, mesmo que não tenham feito pedidos, com seus respectivos pedidos (se houver).
-- 21. Liste todos os clientes com o valor total de seus pedidos (mesmo que não tenham feito pedidos).
-- 22. Liste os 3 clientes que mais gastou, exibir nome do cliente e o valor gasto.

