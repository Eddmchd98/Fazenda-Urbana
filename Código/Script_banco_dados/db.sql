use Fazenda;

CREATE TABLE Funcionário (
  Funcionário_mátricula int PRIMARY KEY NOT NULL,
  Funcionário_nome char,
  Funcionário_CPF int NOT NULL,
  Funcionário_contato_id int,
  Funcionário_endereço_id int,
  Funcionário_departamento_id int
);

CREATE TABLE Departamento (
  Departamento_id int,
  Departamento_cargo char,
  Departamento_atividade char,
  Departamento_nivel_acesso int
);

CREATE TABLE FuncionárioContato (
  Contato_id int PRIMARY KEY,
  Contato_telefoneP int,
  Contato_telefoneR int,
  Contato_email char
);

CREATE TABLE FuncionárioEndereço (
  Endereço_id int PRIMARY KEY,
  Endereço_país char,
  Endereço_estado char,
  Endereço_cidade char,
  Endereço_CEP int,
  Endereço_número int,
  Endereço_complemento char
);

CREATE TABLE Fornecedor (
  Fornecedor_CNPJ int PRIMARY KEY NOT NULL,
  Fornecedor_nome_fantasia char,
  Fornecedor_razão_social char,
  Fornecedor_status char,
  Fornecedor_data_registro date,
  Fornecedor_insumo_id int,
  Fornecedor_contato_id int,
  Fornecedor_endereço_id int
);

CREATE TABLE FornecedorContato (
  Contato_id int PRIMARY KEY,
  Contato_telefoneP int,
  Contato_telefoneR int,
  Contato_email char
);

CREATE TABLE FornecedorEndereço (
  Endereço_id int PRIMARY KEY,
  Endereço_país char,
  Endereço_estado char,
  Endereço_cidade char,
  Endereço_CEP int,
  Endereço_número int,
  Endereço_complemento char
);

CREATE TABLE Insumo (
  Insumo_id int PRIMARY KEY NOT NULL,
  Insumo_nome char,
  Insumo_descrição text,
  Insumo_destino text,
  Insumo_data_pedido date,
  Insumo_data_entrega date
);

CREATE TABLE Cliente (
  Cliente_CNPJ int PRIMARY KEY NOT NULL,
  Cliente_nome char,
  Cliente_pedido_id int,
  Cliente_contato_id int,
  Cliente_endereço_id int
);

CREATE TABLE ClienteContato (
  Contato_id int PRIMARY KEY,
  Contato_telefoneP int,
  Contato_telefoneR int,
  Contato_email char
);

CREATE TABLE ClienteEndereço (
  Endereço_id int PRIMARY KEY,
  Endereço_país char,
  Endereço_estado char,
  Endereço_cidade char,
  Endereço_CEP int,
  Endereço_número int,
  Endereço_complemento char
);

CREATE TABLE ClientePedido (
  Pedido_id int,
  Pedido_produto_id int,
  Pedido_descrição char,
  Pedido_quantidade_lote int,
  Pedido_valor int,
  Pedido_cliente_CNPJ int
);

CREATE TABLE PedidoItem (
  Pedido_id int,
  Produto_id int,
  Pedido_item_quantidade int,
  Pedido_item_observação text
);

CREATE TABLE Produto (
  Produto_id int PRIMARY KEY NOT NULL,
  Produto_nome char,
  Produto_descrição char,
  Produto_valor_unitário int
);

CREATE TABLE Produção (
  Produção_id int PRIMARY KEY NOT NULL,
  Produto_id int,
  Produção_descrição text,
  Produção_insumo1_id char,
  Produção_insumo2_id char,
  Produção_quantidade int,
  Produção_data_inicio date,
  Produção_data_termino date,
  Produção_etapa_id int
);

CREATE TABLE Etapa (
  Etapa_id int PRIMARY KEY NOT NULL,
  Etapa_data_inicio date,
  Etapa_data_termino date,
  Etapa_tempo_previsto int,
  Etapa_observação text
);

CREATE TABLE Admin (
  Admin_id int PRIMARY KEY NOT NULL,
  Admin_funcionário_id int
);