use cadastro;

select nome from alunos 
where sexo = 'F'
order by nome;

select * from alunos
where nascimento between '1985-01-01' and '1990-12-31'
order by nascimento, nome;

select nome,prof from alunos
where sexo = 'M' and prof = 'Programador'
order by nome;

select * from alunos
where sexo = 'F' and nacionalidade = 'Brasil' or nacionalidade = 'brasileira' and nome like 'J%'
order by nome;


select nome, nacionalidade, peso from alunos
where nome like '%silva%' and sexo = 'M' and nacionalidade != 'Brasileiro' and peso < 100.0
order by peso, nacionalidade;

select max(altura) from alunos
where sexo = 'M' and nacionalidade = 'BraSiLeIRo';

select min(altura) from alunos
where sexo = 'M' and nacionalidade = 'BraSiLeIRo';


/* média peso de todos alunos */
select sum(peso) from alunos;
select avg(peso) from alunos;


select min(peso) from alunos
where sexo = 'F' and nacionalidade != 'brasileirA' and nascimento between '1990-01-01' and '2000-12-31'
;


select count(*) from alunos
where sexo = 'F' 
and altura > 1.90;


select * from alunos;

INSERT INTO alunos (nome, prof, nascimento, sexo, peso, altura, nacionalidade) VALUES
('Juliana Lima', 'Desenvolvedora Front-End', '1991-03-12', 'F', 56.00, 1.65, 'Brasileira'),
('Joana Mendes', 'Analista de Dados', '1990-11-24', 'F', 63.50, 1.70, 'Brasileira'),
('Janaína Duarte', 'Engenheira de Software', '1994-07-08', 'F', 61.00, 1.68, 'Brasileira'),
('Júlia Santos', 'Designer Gráfica', '1993-02-19', 'F', 59.00, 1.64, 'Brasileira'),
('Jéssica Araújo', 'Arquiteta de TI', '1992-06-28', 'F', 62.00, 1.66, 'Brasileira'),
('Jana Clara', 'Analista de Sistemas', '1991-09-17', 'F', 58.50, 1.67, 'Brasileira'),
('Jaqueline Silva', 'Cientista de Dados', '1993-08-23', 'F', 60.00, 1.69, 'Brasileira'),
('Jennifer Costa', 'Engenheira de Software', '1994-10-12', 'F', 57.00, 1.65, 'Brasileira'),
('Josiane Nunes', 'Especialista em Segurança', '1990-01-15', 'F', 64.00, 1.68, 'Brasileira'),
('Julieta Barreto', 'Programadora Mobile', '1992-04-21', 'F', 59.50, 1.62, 'Brasileira'),
('Camila Oliveira', 'Gestora de Projetos', '1991-07-30', 'F', 62.50, 1.71, 'Brasileira');

alter table alunos modify nome varchar(60);
alter table alunos modify prof varchar(90);


INSERT INTO alunos (nome, prof, nascimento, sexo, peso, altura, nacionalidade) VALUES
('Carlos Silva', 'Desenvolvedor Back-End', '2001-05-10', 'M', 75.00, 1.78, 'Brasileiro'),
('Lucas Silva', 'Designer UI/UX', '2002-07-15', 'M', 70.00, 1.80, 'Brasileiro'),
('Rafael Silva', 'Engenheiro de Software', '2003-01-22', 'M', 72.00, 1.75, 'Brasileiro'),
('Fernando Silva', 'Programador Full Stack', '2000-09-13', 'M', 80.00, 1.82, 'Brasileiro'),
('Gabriel Silva', 'Analista de Dados', '2001-12-25', 'M', 78.00, 1.77, 'Brasileiro'),
('Bruno Silva', 'Engenheiro de Sistemas', '2002-04-30', 'M', 74.50, 1.76, 'Brasileiro'),
('Diego Silva', 'Desenvolvedor Front-End', '2004-02-05', 'M', 69.00, 1.74, 'Brasileiro'),
('Mateus Silva', 'Administrador de Banco de Dados', '2003-08-18', 'M', 73.00, 1.78, 'Brasileiro'),
('Felipe Silva', 'Analista de Infraestrutura', '2000-11-07', 'M', 76.00, 1.80, 'Brasileiro'),
('Pedro Silva', 'Programador C++', '2002-06-14', 'M', 77.00, 1.79, 'Brasileiro'),
('Vinícius Silva', 'Cientista de Dados', '2003-09-02', 'M', 70.00, 1.81, 'Brasileiro'),
('João Silva', 'Administrador de Sistemas', '2001-03-25', 'M', 79.00, 1.80, 'Brasileiro'),
('Marco Silva', 'Engenheiro de Redes', '2004-01-10', 'M', 82.00, 1.83, 'Brasileiro'),
('André Souza', 'Programador Mobile', '2002-05-20', 'M', 71.00, 1.74, 'Brasileiro'),
('Gustavo Oliveira', 'Desenvolvedor Front-End', '2003-11-18', 'M', 68.00, 1.76, 'Brasileiro'),
('Vinícius Costa', 'Gerente de TI', '2005-07-09', 'M', 80.00, 1.79, 'Brasileiro'),
('Fábio Almeida', 'Consultor de TI', '2001-02-17', 'M', 75.50, 1.77, 'Brasileiro'),
('Alexandre Gomes', 'Desenvolvedor de Software', '2004-10-23', 'M', 72.00, 1.75, 'Brasileiro'),
('Thiago Pereira', 'Analista de Segurança', '2003-12-11', 'M', 77.50, 1.78, 'Brasileiro'),
('Leandro Rodrigues', 'Especialista em Banco de Dados', '2004-09-15', 'M', 73.00, 1.76, 'Brasileiro');


INSERT INTO alunos (nome, prof, nascimento, sexo, peso, altura, nacionalidade) VALUES
('Silvano Oliveira', 'Desenvolvedor Back-End', '2001-05-10', 'M', 105.00, 1.78, 'Argentino'),
('Marcos Silva', 'Designer UI/UX', '2002-07-15', 'M', 70.00, 1.80, 'Português'),
('Silvio Santos', 'Engenheiro de Software', '2003-01-22', 'M', 72.00, 1.75, 'Espanhol'),
('Josivaldo Silva', 'Programador Full Stack', '2000-09-13', 'M', 102.00, 1.82, 'Chileno'),
('Gilson Silva', 'Analista de Dados', '2001-12-25', 'M', 108.00, 1.77, 'Paraguaio'),
('Silvio Silva', 'Engenheiro de Sistemas', '2002-04-30', 'M', 74.50, 1.76, 'Peruano'),
('Alex Silva', 'Desenvolvedor Front-End', '2004-02-05', 'M', 69.00, 1.74, 'Colombiano'),
('Silas Souza', 'Administrador de Banco de Dados', '2003-08-18', 'M', 106.00, 1.78, 'Boliviano'),
('Silvio Costa', 'Analista de Infraestrutura', '2000-11-07', 'M', 76.00, 1.80, 'Uruguaio'),
('Ricardo Silva', 'Programador C++', '2002-06-14', 'M', 107.00, 1.79, 'Equatoriano'),
('Silvano Silva', 'Cientista de Dados', '2003-09-02', 'M', 71.00, 1.81, 'Mexicano'),
('João Silveira', 'Administrador de Sistemas', '2001-03-25', 'M', 79.00, 1.80, 'Chileno'),
('Marco Silva', 'Engenheiro de Redes', '2004-01-10', 'M', 82.00, 1.83, 'Peruano'),
('José Silveira', 'Programador Mobile', '2002-05-20', 'M', 71.00, 1.74, 'Boliviano'),
('Gustavo Silva', 'Desenvolvedor Front-End', '2003-11-18', 'M', 106.00, 1.76, 'Paraguaio'),
('Vinícius Silva', 'Gerente de TI', '2005-07-09', 'M', 80.00, 1.79, 'Equatoriano'),
('Fábio Silva', 'Consultor de TI', '2001-02-17', 'M', 105.00, 1.77, 'Portugues'),
('Alexandre Silva', 'Desenvolvedor de Software', '2004-10-23', 'M', 72.00, 1.75, 'Mexicano'),
('Thiago Silva', 'Analista de Segurança', '2003-12-11', 'M', 108.00, 1.78, 'Chileno'),
('Leandro Silva', 'Especialista em Banco de Dados', '2004-09-15', 'M', 73.00, 1.76, 'Uruguaio');


INSERT INTO alunos (nome, prof, nascimento, sexo, peso, altura, nacionalidade) VALUES
('Maria Oliveira', 'Engenheira Civil', '2002-05-20', 'F', 68.00, 1.91, 'Brasileira'),
('Ana Souza', 'Desenvolvedora Back-End', '2003-01-10', 'F', 70.50, 1.92, 'Brasileira'),
('Juliana Costa', 'Arquiteta', '2001-08-25', 'F', 75.00, 1.93, 'Brasileira'),
('Roberta Lima', 'Designer Gráfico', '2004-03-15', 'F', 65.00, 1.91, 'Brasileira'),
('Fernanda Silva', 'Programadora', '2000-12-30', 'F', 60.00, 1.92, 'Brasileira'),
('Mariana Santos', 'Engenheira de Software', '2001-06-05', 'F', 72.00, 1.91, 'Brasileira'),
('Patrícia Almeida', 'Cientista de Dados', '2002-11-18', 'F', 80.00, 1.94, 'Brasileira'),
('Gabriela Rodrigues', 'Analista de Sistemas', '2000-09-28', 'F', 68.50, 1.90, 'Brasileira'),
('Carla Mendes', 'Programadora Front-End', '2003-07-02', 'F', 62.00, 1.91, 'Brasileira'),
('Sofia Pereira', 'Desenvolvedora Full-Stack', '2004-04-09', 'F', 75.00, 1.93, 'Brasileira'),
('Tatiane Oliveira', 'Gerente de Projetos', '2001-02-17', 'F', 70.00, 1.91, 'Brasileira'),
('Isabela Silva', 'Arquiteta de TI', '2003-12-24', 'F', 65.50, 1.92, 'Brasileira'),
('Raíssa Costa', 'Engenheira de Redes', '2000-11-10', 'F', 74.00, 1.94, 'Brasileira'),
('Camila Santos', 'Desenvolvedora de Software', '2002-06-18', 'F', 70.50, 1.91, 'Brasileira'),
('Beatriz Almeida', 'Cientista de Dados', '2001-05-01', 'F', 73.00, 1.92, 'Brasileira'),
('Monique Lima', 'Desenvolvedora Mobile', '2004-03-23', 'F', 69.00, 1.91, 'Brasileira'),
('Jéssica Souza', 'Analista de Dados', '2003-10-30', 'F', 66.00, 1.92, 'Brasileira'),
('Luciana Rodrigues', 'Engenheira de Software', '2001-01-15', 'F', 71.00, 1.91, 'Brasileira'),
('Letícia Oliveira', 'Desenvolvedora Back-End', '2002-08-05', 'F', 78.00, 1.94, 'Brasileira'),
('Camila Pereira', 'Especialista em Banco de Dados', '2000-04-20', 'F', 72.00, 1.91, 'Brasileira');
