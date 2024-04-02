SELECT Nome,Ano FROM Filmes; --OK 1

SELECT Nome,Ano FROM Filmes ORDER BY Ano; --OK 2

SELECT Nome,Ano,Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'; -- OK 3

SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano = 1997; --OK 4

SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano > 2000; --OK 5

SELECT Nome,Ano,Duracao FROM Filmes WHERE Duracao BETWEEN 101 AND 150 ORDER BY Duracao; --OK 6

SELECT Ano, Count(*) FROM Filmes GROUP BY Ano; --OK 7

SELECT * FROM Atores WHERE Genero = 'M'; --OK 8

SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome; --OK 9

SELECT F.Nome,G.Genero FROM Filmes F JOIN FilmesGenero FG ON F.Id = FG.IdFilme JOIN Generos G ON FG.IdGenero = G.Id; --OK 10

SELECT F.Nome,G.Genero FROM Filmes F JOIN FilmesGenero FG ON F.Id = FG.IdFilme JOIN Generos G ON FG.IdGenero = G.Id WHERE G.Genero = 'Mistério'; --OK 11

SELECT F.Nome,A.PrimeiroNome,A.UltimoNome,EF.Papel FROM Filmes F JOIN ElencoFilme EF ON F.Id = EF.IdFilme JOIN Atores A ON EF.IdAtor = A.Id; --OK 12