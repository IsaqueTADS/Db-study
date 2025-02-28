USE cadastro;

CREATE TABLE IF NOT EXISTS cursos (
    nome VARCHAR(30) NOT NULL UNIQUE,
    descricao TEXT,
    carga INT UNSIGNED,
    totaulas INT,
    ano YEAR DEFAULT '2024'
) DEFAULT CHARSET=utf8mb4;

alter table cursos
add column idcurso int first;

ALTER TABLE cursos
ADD PRiMARY KEY (idcurso);



desc cursos;


/* alter table pessoas
rename to garfanhotos;

describe garfanhotos;

alter table pessoas 
add column profissao varchar(10);

select sexo,nacionalidade, nome, sexo from pessoas where sexo = 'M' and id % 2 = 0;

select * from pessoas;

//alter table pessoas 
drop column profissao;// 

alter table pessoas 
add column profissao varchar(10) after nome;

alter table pessoas
add primary1 int first;

alter table pessoas 
drop column primary1;

alter table pessoas 
modify column profissao varchar(20) not null default ' ';

alter table pessoas 
change column profissao prof varchar(20);
 */
