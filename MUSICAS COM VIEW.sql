create database uwu;
use uwu;

create table artista(
id_artista int auto_increment primary key,
nm_artista varchar(60),
nm_integrantes varchar(2000),
tipo enum('solista', 'banda', 'grupo')
);

create table albuns(
id_album int auto_increment primary key,
fk_id_artista int,
nm_album varchar(60),
ano_lancamento year,
foreign key(fk_id_artista) references artista(id_artista)
);

create table musicas(
id_musica int auto_increment primary key,
nm_musica varchar(200),
fk_id_album int,
foreign key(fk_id_album) references albuns(id_album)
);


INSERT INTO artista(nm_artista, nm_integrantes, tipo) VALUES
('TWICE','Im Nayeon, Yoo Jeongyeon, Momo Jjang, Sana Jjang, Park Jihyo, Mina Jjang, Kim Dahyun, Chou Tzuyu', 'grupo'),
('ABBA','Agnetha Fältskog, Björn Ulvaeus, Benny Andersson, Anni-Frid Lyngstad', 'banda'),
('My Chemical Romance','Gerard Way, Frank Iero, Mikey Way, Ray Toro', 'banda'),
('BTS','Kim Namjoon, Kim Seokjin, Jeong Hoseok, Park Jimin, Kim Taehyung, Jeon Jungkook, Min Yoongi', 'grupo'),
('Beabadoobee', NULL, 'solista'),
('clairo', NULL, 'solista'),
('Wave To Earth','Kim Daniel, Shin Dong Gyu, Cha Soon-jong', 'banda'),
('Jão', NULL, 'solista'),
('Pitty', NULL, 'solista'),
('Rita Lee', NULL, 'solista'),
('Paramore','Hayley Williams, Taylor York, Zac Farro', 'banda'),
('Pierce The Veil','Vic Fuentes, Mike Fuentes', 'banda'),
('Mitski', NULL, 'solista'),
('Wallows','Dylan Minnette, Braeden Lemasters, Cole Preston', 'banda'),
('Tyler The Creator', NULL, 'solista'),
('Gabriel O Pensador', NULL, 'solista'),
('TV Girl','Brad Petering, Jason Wyman, Wyatt Harmon', 'banda');


INSERT INTO albuns (fk_id_artista, nm_album, ano_lancamento) VALUES
(1, 'Formula of Love: O+T=＜3', 2021),
(1, 'Between 1&2', 2022),
(1, 'READY TO BE', 2023),
(2, 'Super Trouper', 1980),
(2, 'ABBA', 1975),
(2, 'Voulez-Vous', 1979),
(3, 'The Black Parade', 2006),
(3, 'Three Cheers for Sweet Revenge', 2004),
(3, 'Danger Days: The True Lives of the Fabulous Killjoys', 2010),
(4, 'Love Yourself: Answer', 2018),
(4, 'The Most Beautiful Moment in Life: Young Forever', 2016),
(4, 'Map of the Soul: Persona', 2019),
(5, 'This is How Tomorrow Moves', 2024),
(5, 'Beatopia', 2022),
(5, 'Loveworm', 2019),
(6, 'Immunity', 2019),
(6, 'Sling', 2021),
(6, 'Diary 001', 2018),
(7, 'Wave 0.01', 2020),
(7, '0.1 Flaws and All', 2023),
(7, 'Play With Earth!', 2024),
(8, 'Pirata', 2021),
(8, 'Super', 2023),
(8, 'Anti-Heroi', 2019),
(9, 'Admiravel Chip Novo', 2003),
(9, 'Anacronico', 2005),
(9, 'Setevidas', 2014),
(10, 'Rita Lee', 1979),
(10, 'Flerte Fatal', 1987),
(10, 'Aqui, Ali, em Qualquer Lugar', 2001),
(11, 'Brand New Eyes', 2009),
(11, 'Paramore', 2013),
(11, 'Riot', 2007),
(12, 'Collide With The Sky', 2012),
(12, 'Selfish Machines', 2010),
(12, 'Misadventures', 2016),
(13, 'Laurel Hell', 2022),
(13, 'Bury Me at Makeout Creek', 2014),
(13, 'Puberty 2', 2016),
(14, 'Nothing Happens', 2019),
(14, 'Spring', 2018),
(14, 'Singles Collection 2017-2020', 2020),
(15, 'Igor', 2019),
(15, 'Call Me If You Get Lost', 2021),
(15, 'Flower Boy', 2017),
(16, 'Quebra-Cabeça', 1998),
(16, 'Seja Você Mesmo (Mas Não Seja Sempre o Mesmo)', 2001),
(16, 'MTV Ao Vivo', 2003),
(17, 'Who Really Cares', 2016),
(17, 'French Exit', 2014),
(17, 'Death of a Party Girl', 2018);

-- 1
INSERT INTO musicas (fk_id_album, nm_musica) VALUES
(1, 'scientist'),
(1, 'moonlight'),
(1, 'icon'),
(1, 'cruel'),
(1, 'real you'),
(1, 'F.I.L.A.(fall in love again)'),
(1, 'last waltz'),
(1, 'espresso'),
(1, 'rewind'),
(1, 'cactus'),
(1, 'push & pull (jihyo, sana, dahyun)'),
(1, 'hello (nayeon, momo)'),
(1, '1,3,2 (jeongyeon, mina, tzuyu)'),
(1, 'candy'),
(1, 'the feels');

-- 2
INSERT INTO musicas (fk_id_album, nm_musica) VALUES
(2, 'talk that talk'),
(2, 'queen of hearts'),
(2, 'basics'),
(2, 'trouble'),
(2, 'brave'),
(2, 'gone'),
(2, 'when we were kids'),
(2, 'i cant stop me'),
(2, 'hell in heaven'),
(2, 'up no more'),
(2, 'go hard'),
(2, 'say something'),
(2, 'alcohol free'),
(2, 'first time'),
(2, 'fancy');

-- 3
INSERT INTO musicas (fk_id_album, nm_musica) VALUES
(3, 'set me free'),
(3, 'moonlight sunrise'),
(3, 'got the thrills'),
(3, 'blame it on me'),
(3, 'wallflower'),
(3, 'crazy stupid love'),
(3, 'set me free (eng)'),
(3, 'dance the night away'),
(3, 'TT'),
(3, 'likey'),
(3, 'knock knock'),
(3, 'signal'),
(3, 'jelly jelly'),
(3, 'cheer up'),
(3, 'cry for me');

-- 4
INSERT INTO musicas (fk_id_album, nm_musica) VALUES
(4, 'super trouper'),
(4, 'the winner takes it all'),
(4, 'on and on an on'),
(4, 'andante, andate'),
(4, 'me and i'),
(4, 'happy new year'),
(4, 'our last summer'),
(4, 'the piper'),
(4, 'lay all your love on me'),
(4, 'the way old friends do'),
(4, 'elaine'),
(4, 'put on your white sombrero'),
(4, 'waterloo'),
(4, 'honey honey'),
(4, 'ring, ring - us remix');

-- 5
INSERT INTO musicas (fk_id_album, nm_musica) VALUES
(5, 'mamma mia'),
(5, 'hey, hey helen'),
(5, 'tropical loveland'),
(5, 'SOS'),
(5, 'man in the middle'),
(5, 'bang-a-boomerang'),
(5, 'i do, i do, i do, i do, i do'),
(5, 'back me'),
(5, 'intermezzo no.1'),
(5, 'ive been waiting for you'),
(5, 'so long'),
(5, 'crazy world'),
(5, 'medley: pic a bale of cotton'),
(5, 'dancing queen'),
(5, 'knowing me, knowing you');

-- 6
INSERT INTO musicas (fk_id_album, nm_musica) VALUES
(6, 'as good as new'),
(6, 'voulez-vous'),
(6, 'i have a dream'),
(6, 'angeleyes'),
(6, 'the king has lost his crown'),
(6, 'does your mother know'),
(6, 'if it wasnt for the nights'),
(6, 'chiquitita'),
(6, 'lovers (live a little longer)'),
(6, 'kiss of fire'),
(6, 'summer night city'),
(6, 'lovelight - original version'),
(6, 'gimme! gimme! gimme! (a man after midnight)'),
(6, 'money, money, money'),
(6, 'change your mind');

-- 7
INSERT INTO musicas (fk_id_album, nm_musica) VALUES
(7, 'the end'),
(7, 'dead!'),
(7, 'this is now i dessappear'),
(7, 'the sharpest lives'),
(7, 'welcome to the black parade'),
(7, 'i dont love you'),
(7, 'house of wolves'),
(7, 'cancer'),
(7, 'mama'),
(7, 'sleep'),
(7, 'teenagers'),
(7, 'disenchanted'),
(7, 'famous last words'),
(7, 'blood - hidden track'),
(7, 'demolition lovers');

-- 8
INSERT INTO musicas (fk_id_album, nm_musica) VALUES
(8, 'helena'),
(8, 'give em hell, kid'),
(8, 'to the end'),
(8, 'You Know What They Do to Guys Like Us in Prison'),
(8, 'im not okay (i promise)'),
(8, 'the ghost of you'),
(8, 'the jetset life is gonna kill you'),
(8, 'interlude'),
(8, 'thank you for the venom'),
(8, 'hang em high'),
(8, 'its not a fashion statement, its a deathwish'),
(8, 'cemetary drive'),
(8, 'i never told you what i do for a living'),
(8, 'the world is ugly'),
(8, 'november rain');

-- 9
INSERT INTO musicas (fk_id_album, nm_musica) VALUES
(9, 'look alive, sunshine'),
(9, 'na na na'),
(9, 'bulletproof heart'),
(9, 'sing'),
(9, 'planetary (go!)'),
(9, 'the only hope for me is you'),
(9, 'jet-star and the kobra kid / Traffic Report'),
(9, 'party posion'),
(9, 'save yourself, ill hold them back'),
(9, 'S/C/A/R/E/C/R/O/W/'),
(9, 'Summertime'),
(9, 'DESTROYA'),
(9, 'The kids from yesterday'),
(9, 'goodnight, dr. death'),
(9, 'vampire money');

-- 10
INSERT INTO musicas (fk_id_album, nm_musica) VALUES
(10, 'euphoria'),
(10, 'serendipy'),
(10, 'DNA'),
(10, 'Dimple'),
(10, 'Her'),
(10, 'singularity'),
(10, 'fake love'),
(10, 'the truth untold'),
(10, 'tear'),
(10, 'epiphany'),
(10, 'im fine'),
(10, 'idol'),
(10, 'best of me'),
(10, 'airplane pt.2'),
(10, 'anpanman');

-- 11
INSERT INTO musicas (fk_id_album, nm_musica) VALUES
(11, 'careful'),
(11, 'crushcrushcrush'),
(11, 'misery business'),
(11, 'we are broken'),
(11, 'thats what you get'),
(11, 'hallelujah'),
(11, 'born for this'),
(11, 'fences'),
(11, 'feeling sorry'),
(11, 'decode'),
(11, 'pressure'),
(11, 'ignore'),
(11, 'playing god'),
(11, 'brick by boring brick'),
(11, 'turn it off');

-- 12
INSERT INTO musicas (fk_id_album, nm_musica) VALUES
(12, 'bulls in the bronx'),
(12, 'props & mayhem'),
(12, 'caraphernelia'),
(12, 'a match into water'),
(12, 'hold on till may'),
(12, 'today i saw the whole world'),
(12, 'the boy who could fly'),
(12, 'westfall'),
(12, 'king for a day'),
(12, 'bamn! bamn!'),
(12, 'bulletproof love'),
(12, 'oh, why did you leave me?'),
(12, 'hell above'),
(12, 'run away'),
(12, 'have mercy');

-- 13
INSERT INTO musicas (fk_id_album, nm_musica) VALUES
(13, 'love me more'),
(13, 'the only heartbreaker'),
(13, 'there will be tears'),
(13, 'bug'),
(13, 'love/less'),
(13, 'star / light'),
(13, 'snow'),
(13, 'heat lightning'),
(13, 'should’ve been me'),
(13, 'a pearl');

-- 14
INSERT INTO musicas (fk_id_album, nm_musica) VALUES
(14, 'scrawny'),
(14, 'pulling leaves off trees'),
(14, 'pictures of girls'),
(14, 'drunk on halloween'),
(14, 'i dont wanna talk'),
(14, 'everythings easy'),
(14, 'treacherous'),
(14, 'sidelines'),
(14, 'these days'),
(14, 'i want to be popular'),
(14, 'nothing happens');

-- 15
INSERT INTO musicas (fk_id_album, nm_musica) VALUES
(15, 'igor’s theme'),
(15, 'earfquake'),
(15, 'i think'),
(15, 'running out of time'),
(15, 'new magic wand'),
(15, 'a boy is a gun'),
(15, 'pupils'),
(15, 'what’s good'),
(15, 'gone, gone / thank you'),
(15, 'are we still friends?');

-- 16
INSERT INTO musicas (fk_id_album, nm_musica) VALUES
(16, 'lôraburra'),
(16, 'cachimbo da paz'),
(16, 'rap da resistência'),
(16, 'quem sou eu?'),
(16, 'o poeta está vivo'),
(16, 'lôraburra (remix)'),
(16, 'lôraburra 2'),
(16, 'cachimbo da paz 2'),
(16, 'voz ativa'),
(16, 'atitude'),
(16, 'brasileiro nato');

-- 17
INSERT INTO musicas (fk_id_album, nm_musica) VALUES
(17, 'cigarettes out the window'),
(17, 'birdwatching'),
(17, 'lovers rock'),
(17, 'not enough'),
(17, 'carmen'),
(17, 'if you want it'),
(17, 'i’m just going to leave you here'),
(17, 'the neighbors are noisy'),
(17, '9 to 5'),
(17, 'everything is better with you'),
(17, 'we can do it'),
(17, 'andrew in drag'),
(17, 'french exit'),
(17, 'who really cares?'),
(17, 'death of a party girl');

CREATE VIEW musicaAlbumeArtista AS
SELECT a.nm_artista AS artista, al.nm_album AS album, m.nm_musica AS musica
FROM artista a
JOIN albuns al ON a.id_artista = al.fk_id_artista
JOIN musicas m ON al.id_album = m.fk_id_album;

CREATE VIEW albunsArtista AS
SELECT a.nm_artista AS artista, al.nm_album AS album
FROM artista a
JOIN albuns al ON a.id_artista = al.fk_id_artista;


CREATE VIEW artistasDecrescente AS
SELECT nm_artista
FROM artista;

CREATE VIEW albunsAno AS
SELECT al.ano_lancamento AS ano, COUNT(*) AS quantidade_albuns
FROM albuns al
GROUP BY al.ano_lancamento;

CREATE VIEW musicasAntigas AS
SELECT m.nm_musica AS musica, a.nm_artista AS artista, al.nm_album AS album
FROM musicas m
JOIN albuns al ON m.fk_id_album = al.id_album
JOIN artista a ON al.fk_id_artista = a.id_artista
WHERE al.ano_lancamento < 2000;

CREATE VIEW bandasEntreAnos AS
SELECT DISTINCT a.nm_artista AS banda
FROM artista a
JOIN albuns al ON a.id_artista = al.fk_id_artista
WHERE a.tipo = 'banda'
AND (al.ano_lancamento < 1990 OR al.ano_lancamento > 2010);

CREATE VIEW musicasMaisDeUmAlbum AS
SELECT nm_musica
FROM musicas
GROUP BY nm_musica
HAVING COUNT(DISTINCT fk_id_album) > 1;

CREATE VIEW musicasDeMaisArtistas AS
SELECT m.nm_musica AS musica
FROM musicas m
JOIN albuns al ON m.fk_id_album = al.id_album
GROUP BY m.nm_musica
HAVING COUNT(DISTINCT al.fk_id_artista) > 1;

