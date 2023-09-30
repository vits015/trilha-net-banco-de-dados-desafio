--1
SELECT 
	NOME,
	ANO
FROM
	Filmes

--2
SELECT
	Nome,
	Ano
FROM
	Filmes
ORDER BY
	Ano ASC

--3
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE
	Nome = 'De Volta para o Futuro'

--4
SELECT
	*
FROM
	Filmes
WHERE
	Ano = 1997

--5
SELECT
	*
FROM
	Filmes
WHERE
	Ano > 2000

--6
SELECT
	*
FROM
	Filmes
WHERE
	Duracao > 100 
	AND Duracao < 150
ORDER BY
	Duracao ASC

--7
SELECT 
	Ano,
	Count(ano) AS [Quantidade]
FROM
	Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT 
	PrimeiroNome,
	UltimoNome
FROM
	Atores
WHERE
	Genero = 'M'

--9
SELECT
	PrimeiroNome,
	UltimoNome
FROM
	Atores
WHERE
	Genero = 'F'
ORDER BY
	PrimeiroNome

--10
SELECT
	Filmes.Nome,
	Generos.Genero
FROM
	Filmes 
	INNER JOIN FilmesGenero 
	ON Filmes.Id = FilmesGenero.IdFilme
	INNER JOIN Generos 
	ON Generos.Id = FilmesGenero.IdGenero

--11
SELECT
	Filmes.Nome,
	Generos.Genero
FROM
	Filmes 
	INNER JOIN FilmesGenero 
	ON Filmes.Id = FilmesGenero.IdFilme
	INNER JOIN Generos 
	ON Generos.Id = FilmesGenero.IdGenero
WHERE
	Generos.Genero = 'Mistério'

--12
SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM
	Filmes
	INNER JOIN ElencoFilme
	ON Filmes.Id = ElencoFilme.IdFilme
	INNER JOIN Atores
	ON Atores.Id = ElencoFilme.IdAtor

