use cadastro;

select distinct peso from alunos ;


select distinct carga from cursos
order by carga;


select carga from cursos
group by carga;

select carga, count(nome) from cursos
group by carga;

select totalaulas, count(*) from cursos
group by totalaulas
order by totalaulas;


select ano, count(*) from cursos
group by ano
having count(*) > 3
order by count(*)
;

select avg(peso) from alunos;

select peso, count(nome) from alunos
group by peso
having peso > (select avg(peso) from alunos);


