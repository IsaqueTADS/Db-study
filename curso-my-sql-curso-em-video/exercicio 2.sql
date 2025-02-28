use cadastro;


select prof, count(nome) from alunos 
group by prof;

select sexo, count( * ) from alunos
where nascimento > '2000-01-01'
group by sexo;
 
 select count(*) from alunos;
 
 select nacionalidade, count(*) from alunos
 where sexo = 'M' 
 and nacionalidade != 'brasileiro'
 and  nacionalidade != 'brasil'
 group by nacionalidade
 having count(*) > 3
 ;
 
 
 select altura, count(altura),sexo,peso from alunos
 where sexo = 'M'
 and peso > 100.0
 and altura > (select avg(altura) from alunos)
 group by altura;
 