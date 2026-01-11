Use Livraria

--| Tabela Secundaria (Genero)
	create table Genero
		(
			IdGenero int identity(1,1),
			Genero varchar(250) not null,
			
			constraint PkGenero primary key (IdGenero)
		)

--| Tabela Secundaria (Formato)
	create table Formato
		(
			IdFormato int identity(1,1),
			Formato varchar(250) not null,
			
			constraint PkFormato primary key (IdFormato)
		)

--| Tabela Secundaria (Nacionalidade)
	create table Nacionalidade
		(
			IdNacionalidade int identity(1,1),
			Nacionalidade varchar(250) not null,
			
			constraint PkNacionalidade primary key (IdNacionalidade)
		)

--| Tabela Secundaria (Editora)
	create table Editora
		(
			IdEditora int identity(1,1),
			Editora varchar(250) not null,
			
			constraint PkEditora primary key (IdEditora)
		)

--| Tabela Secundaria (Autor)
	create table Autor
		(
			IdAutor int identity(1,1),
			Autor varchar(250) not null,

			constraint PkAutor primary key (IdAutor)
		)

--| Tabela Principal
create table Livros
	(
		IdLivros int identity(1,1),
		Livro varchar(250) not null,
		IdAutor int not null,
		IdGenero int not null,
		IdEditora int not null,
		Paginas int not null,
		Personagens varchar(250) not null,
		InicioLeitura date,
		FimLeitura date,
		Avaliacao int,
		Favorito int not null,
		Serie int not null,
		IdNacionalidade int not null,
		IdFormato int not null,
		Abandono int not null,
		Link varchar(250) not null,
		Imagem varchar(250) not null,
		

		--| Criação da chave primaria
			constraint PkLivros primary key (IdLivros),

		--| Criação das chaves estrangeiras (tabelas relacionadas a tabela principal)
			constraint FkGenero foreign key (IdGenero) references Genero (IdGenero),
			constraint FkFormato foreign key (IdFormato) references Formato (IdFormato),
			constraint FkNacionalidade foreign key (IdNacionalidade) references Nacionalidade (IdNacionalidade),
			constraint FkEditora foreign key (IdEditora) references Editora (IdEditora),
			constraint FkAutor foreign key (IdAutor) references Autor (IdAutor)
		)

	--| Drop tables (caso seja necessário rever algum conceito)
/*
	drop table Livros
	drop table Genero
	drop table Formato
	drop table Nacionalidade
	drop table Editora
	drop table Autor
*/	