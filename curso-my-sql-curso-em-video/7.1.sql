select nome, cursopreferido from alunos
where cursopreferido like '%_%';

select a.nome,  c.nome,c.ano
from alunos as a
right join cursos as c
on c.idcurso = a.cursopreferido
order by a.nome
;