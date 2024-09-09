--1 - Buscar o nome e ano dos filmes.
SELECT 
	Nome,
	Ano
FROM Filmes;

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano.
SELECT 
    Nome,
    Ano,
	Duracao
FROM Filmes
ORDER BY Ano;

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT 
    Nome,
    Ano,
	Duracao
FROM Filmes f
WHERE f.Nome = 'De Volta para o Futuro';

--4 - Buscar os filmes lançados em 1997
SELECT 
    Nome,
    Ano,
	Duracao
FROM Filmes f
WHERE f.Ano = 1997;

--5 - Buscar os filmes lançados APÓS o ano 2000
SELECT 
    Nome,
    Ano,
	Duracao
FROM Filmes f
WHERE f.Ano >= 2000;

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT 
    Nome,
    Ano,
	Duracao
FROM Filmes f
WHERE f.Duracao > 100 AND f.Duracao < 150
ORDER BY Duracao ASC;

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT 
    Ano,
	COUNT(Ano)Quantidade
FROM Filmes f
GROUP BY f.Ano
ORDER BY SUM(f.Duracao) DESC;

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT a.Id,
	   a.PrimeiroNome,
	   a.UltimoNome,
	   a.Genero
FROM Atores a
WHERE a.Genero = 'M';

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
	a.Id,
	a.PrimeiroNome,
	a.UltimoNome,
	a.Genero
FROM
    Atores a
WHERE
    a.Genero = 'F'
ORDER BY
    a.PrimeiroNome;

--10 - Buscar o nome do filme e o gênero
SELECT
    f.Nome,
    g.Genero
FROM
    Filmes f,
	Generos g,
	FilmesGenero fg
WHERE  f.Id = fg.IdFilme
AND g.Id = fg.IdGenero;

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT
    f.Nome,
    g.Genero
FROM
    Filmes f,
	Generos g,
	FilmesGenero fg
WHERE  f.Id = fg.IdFilme
AND g.Id = fg.IdGenero
AND g.Genero= 'Mistério';

--2 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
   f.Nome,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel
FROM
	Filmes f,
	Atores a,
	ElencoFilme ef
WHERE f.Id = ef.IdFilme
AND ef.IdAtor = a.Id;