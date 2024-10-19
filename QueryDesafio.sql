-- 1º
SELECT 
	Nome,
	Ano
FROM 
	Filmes

-- 2º
SELECT 
	Nome,
	Ano, 
	Duracao
FROM 
	Filmes
ORDER BY
	Ano

-- 3º
SELECT 
	Nome,
	Ano, 
	Duracao
FROM 
	Filmes
WHERE 
	Nome LIKE 'De Volta para o Futuro'

-- 4º
SELECT 
	Nome,
	Ano, 
	Duracao
FROM 
	Filmes
WHERE 
	Ano = 1997

-- 5º
SELECT 
	Nome,
	Ano, 
	Duracao
FROM 
	Filmes
WHERE 
	Ano > 2000

-- 6º
SELECT 
	Nome,
	Ano, 
	Duracao
FROM 
	Filmes
WHERE 
	Duracao > 100 AND Duracao < 150
ORDER BY
	Duracao

-- 7º
SELECT 
	Ano, 
	COUNT(*) Quantidade
FROM 
	Filmes
GROUP BY
	Ano
ORDER BY
	Quantidade DESC

-- 8º
SELECT 
	*
FROM 
	Atores
WHERE 
	Genero = 'M'

-- 9º
SELECT 
	*
FROM 
	Atores
WHERE 
	Genero = 'F'
ORDER BY
	PrimeiroNome

-- 10º
SELECT 
	f.Nome,
	g.Genero
FROM 
	Filmes f
	INNER JOIN FilmesGenero fg ON fg.IdFilme = f.Id
	INNER JOIN Generos g ON g.Id = fg.IdGenero

-- 11º
SELECT 
	f.Nome,
	g.Genero
FROM 
	Filmes f
	INNER JOIN FilmesGenero fg ON fg.IdFilme = f.Id
	INNER JOIN Generos g ON g.Id = fg.IdGenero
WHERE 
	g.Genero = 'Mistério'

-- 12º
SELECT 
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
FROM 
	Filmes f
	INNER JOIN ElencoFilme ef ON ef.IdFilme = f.Id
	INNER JOIN Atores a ON a.Id = ef.IdAtor