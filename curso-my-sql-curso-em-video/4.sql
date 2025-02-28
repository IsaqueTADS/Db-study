use cadastro;

SELECT 
    *
FROM
    garfanhotos;

SELECT 
    *
FROM
    cursos;


insert into cursos values
 ("1","Curso dos saberes 1","a sabedoria virá atraves desse curso","45","37", "2100"),
 ("2","Curso dos saberes 2","a sabedoria virá atraves desse curso","40","37", "2100"),
 ("3","Curso dos saberes 3","a sabedoria virá atraves desse curso","35","37", "2100"),
 ("4","Curso dos saberes 4","a sabedoria virá atraves desse curso","105","37", "2100"),
 ("5","Curso dos saberes 5","a sabedoria virá atraves desse curso","405","37", "2100"),
 ("6","Curso dos saberes 6","a sabedoria virá atraves desse curso","80","37", "2100"),
 ("7","Curso dos saberesa 7"," sabedoria virá atraves desse curso","90","37", "2100"),
 ("8","Curso dos saberes 8","a sabedoria virá atraves desse curso","70","37", "2100"),
 ("9","Curso dos saberes 9","a sabedoria virá atraves desse curso","15","37", "2100"),
 ("10","Curso dos saberes 10","a sabedoria virá atraves desse curso","4500","37", "2100");
 
 desc cursos;
 
 UPDATE cursos 
SET 
    descricao = 'Curso C++ online, através da plataforma even, curso nivel avancado'
WHERE
    idcurso = '1';
 
UPDATE cursos 
SET nome = 'Curso superior adm', descricao = 'Um curso Tecnologo, como inicativa o mercado de trabalho, ofertado pelo IFNMG'
WHERE idcurso = '9' 
LIMIT 1;


DELETE FROM cursos
 where idcurso = '8';
 
 truncate table cursos;
 truncate cursos;
 
 
 
 /*
 DDL = DATA DEFINITION LANGUAGE
 
 CREATE DATABASE
 CREATE TABLE
 ALTER TABLE
 DROP TABLE
 
 
 DML = DATA MANIPULATION LANGUAGE
 
 INSERT INTO
 UPDATE 
 DELETE 
 TRUNCATE
 
 
 
 
 
 
 
 */