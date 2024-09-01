-- 1
select Nome, Ano from Filmes;
-- 2
select Nome, Ano, Duracao from Filmes order by Ano;
-- 3
select Nome, Ano, Duracao from Filmes where Nome = 'De Volta para o Futuro';
-- 4
select Nome, Ano, Duracao from Filmes where Ano = 1997;
-- 5
select Nome, Ano, Duracao from Filmes where Ano > 2000;
-- 6
select Nome, Ano, Duracao from Filmes where Duracao > 100 and duracao < 150 order by duracao;
-- 7
select Ano, Count(*) Quantidade from Filmes group by Ano order by sum(Duracao) desc;
-- 8
select id, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M';
-- 9
select id, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'F' order by PrimeiroNome;
-- 10
select f.Nome, g.Genero from Filmes f inner join FilmesGenero fg on fg.IdFilme = f.Id inner join Generos g on fg.IdGenero = g.id;
-- 11
select f.Nome, g.Genero from Filmes f inner join FilmesGenero fg on fg.IdFilme = f.Id inner join Generos g on fg.IdGenero = g.id where g.Genero = 'Mistério';
-- 12
select f.nome, a.PrimeiroNome, a.UltimoNome, e.Papel from Filmes f inner join ElencoFilme e on e.IdFilme=f.Id inner join Atores a on e.IdAtor = a.Id;
