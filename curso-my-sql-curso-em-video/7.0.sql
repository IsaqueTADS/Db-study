use cadastro;

desc alunos;

select * from alunos;

alter table alunos drop column cursando;

alter table alunos add column cursopreferido int ;

alter table alunos
add foreign key (cursopreferido)
references cursos(idcurso);

select * from alunos ;
select * from cursos ;

update alunos set cursopreferido = '39' where id = '23';


alter table alunos
modify nacionalidade varchar(20) default 'Brsaileiro';