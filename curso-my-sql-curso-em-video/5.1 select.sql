USE cadastro;


INSERT INTO cursos (idcurso, nome, descrição, carga, totalaulas, ano) VALUES
(11, 'Desenvolvimento Full Stack', 'Curso completo de desenvolvimento web full stack.', 120, 60, 2023),
(12, 'APIs REST com Node.js', 'Criação de APIs RESTful usando Node.js e Express.', 50, 25, 2023),
(13, 'Git e GitHub', 'Controle de versões e colaboração com Git e GitHub.', 20, 10, 2022),
(14, 'TypeScript para JavaScript', 'Curso para adicionar tipagem ao seu código JavaScript.', 40, 20, 2023),
(15, 'Vue.js Essencial', 'Introdução ao framework Vue.js para desenvolvimento frontend.', 50, 25, 2022),
(16, 'Python para Data Science', 'Curso para explorar Python aplicado à ciência de dados.', 80, 40, 2023),
(17, 'Desenvolvimento Mobile com React Native', 'Criação de aplicativos móveis com React Native.', 100, 50, 2023),
(18, 'Introdução ao C++', 'Curso básico de programação com C++.', 60, 30, 2023),
(19, 'Estruturas de Dados', 'Conceitos fundamentais de estruturas de dados em programação.', 70, 35, 2022),
(20, 'Algoritmos Avançados', 'Curso voltado para algoritmos e técnicas de programação avançadas.', 90, 45, 2023),
(21, 'PHP para Web', 'Criação de sites dinâmicos usando PHP.', 50, 25, 2023),
(22, 'Angular Essencial', 'Aprenda a criar aplicações frontend com Angular.', 60, 30, 2022),
(23, 'Segurança em Aplicações Web', 'Curso para proteger aplicações web contra ataques comuns.', 40, 20, 2023),
(24, 'Machine Learning com Python', 'Fundamentos do aprendizado de máquina usando Python.', 100, 50, 2023),
(25, 'Java Avançado', 'Curso avançado de programação Java para aplicações complexas.', 120, 60, 2022),
(26, 'Desenvolvimento com Spring Boot', 'Criação de APIs robustas usando Spring Boot.', 80, 40, 2023),
(27, 'Docker para Desenvolvedores', 'Introdução à criação e gerenciamento de containers com Docker.', 40, 20, 2022),
(28, 'Kubernetes Essencial', 'Gerenciamento de aplicações em escala com Kubernetes.', 60, 30, 2023),
(29, 'Ruby on Rails Básico', 'Introdução ao framework Ruby on Rails.', 50, 25, 2022),
(30, 'Desenvolvimento com Flask', 'Criação de aplicações web simples usando Flask.', 30, 15, 2023),
(31, 'Arquitetura de Microserviços', 'Curso para entender e implementar microserviços.', 90, 45, 2023),
(32, 'JavaScript Assíncrono', 'Domine o uso de promises, async/await e callbacks.', 40, 20, 2023),
(33, 'HTML e CSS Avançado', 'Curso para criar layouts responsivos e modernos.', 60, 30, 2023),
(34, 'Big Data com Hadoop', 'Introdução ao processamento de grandes volumes de dados.', 100, 50, 2022),
(35, 'IoT com Python', 'Curso básico de Internet das Coisas com Python.', 50, 25, 2023),
(36, 'Redes de Computadores', 'Fundamentos e conceitos básicos de redes de computadores.', 70, 35, 2023),
(37, 'DevOps com AWS', 'Curso introdutório sobre DevOps usando serviços AWS.', 80, 40, 2022),
(38, 'Inteligência Artificial', 'Curso para aprender os conceitos básicos de IA.', 90, 45, 2023),
(39, 'Games com Unity', 'Criação de jogos com Unity e C#.', 120, 60, 2023),
(40, 'Aplicações com GraphQL', 'Curso básico de GraphQL para APIs modernas.', 50, 25, 2022);

INSERT INTO alunos (nome, prof, nascimento, sexo, peso, altura, nacionalidade) VALUES
('Gabriel Souza', 'Desenvolvedor Front-End', '1994-06-12', 'M', 75.3, 1.75, 'Brasil'),
('Martina Fernández', 'Analista de Sistemas', '1991-09-23', 'F', 65.2, 1.68, 'Argentina'),
('João Oliveira', 'Engenheiro de Software', '1989-11-30', 'M', 80.1, 1.80, 'Portugal'),
('Maria López', 'Desenvolvedora de Jogos', '1995-02-10', 'F', 70.5, 1.65, 'México'),
('Ricardo Almeida', 'Administrador de Banco de Dados', '1990-07-18', 'M', 82.3, 1.78, 'Brasil'),
('Valentina Rodríguez', 'Arquiteta de Software', '1987-12-03', 'F', 68.0, 1.70, 'Colômbia'),
('José García', 'Desenvolvedor de Apps', '1993-04-25', 'M', 72.0, 1.74, 'Espanha'),
('Katherine Sánchez', 'Cientista de Dados', '1992-08-14', 'F', 67.3, 1.66, 'Peru'),
('Carlos Eduardo Pérez', 'Administrador de Redes', '1988-05-22', 'M', 78.9, 1.79, 'Chile'),
('Lucía González', 'Tester de Software', '1996-01-17', 'F', 64.4, 1.69, 'Uruguai'),
('Pedro Gomes', 'Engenheiro de Inteligência Artificial', '1986-11-06', 'M', 81.2, 1.81, 'Brasil'),
('Hugo Lemoine', 'Desenvolvedor Back-End', '1994-07-12', 'M', 73.8, 1.72, 'França'),
('Giulia Rossi', 'Desenvolvedora Full Stack', '1990-09-30', 'F', 69.2, 1.67, 'Itália'),
('Juan Silva', 'Consultor de TI', '1985-03-22', 'M', 85.1, 1.82, 'Argentina'),
('Carla Müller', 'Analista de Infraestrutura', '1991-02-18', 'F', 62.7, 1.64, 'Alemanha'),
('Matthew Walker', 'Desenvolvedor Python', '1993-10-29', 'M', 77.5, 1.75, 'Reino Unido'),
('Fernanda Oliveira', 'Engenheira de Software', '1992-06-05', 'F', 66.3, 1.70, 'Brasil'),
('Luciano Costa', 'Programador de Sistemas', '1990-07-03', 'M', 80.0, 1.78, 'Canadá'),
('Isabela Souza', 'Gerente de TI', '1989-12-15', 'F', 75.8, 1.74, 'Austrália'),
('Daniel Pereira', 'Desenvolvedor C#', '1994-11-04', 'M', 72.4, 1.73, 'Nova Zelândia'),
('Sofia Almeida', 'Engenheira de Dados', '1991-05-20', 'F', 68.5, 1.66, 'Portugal'),
('Leandro Rocha', 'Analista de Segurança', '1988-08-12', 'M', 79.2, 1.79, 'Brasil'),
('Mariana Costa', 'Desenvolvedora Web', '1993-03-09', 'F', 71.1, 1.70, 'França'),
('Eduardo Lima', 'Desenvolvedor Java', '1990-12-11', 'M', 76.8, 1.76, 'Espanha'),
('Juliana Souza', 'Analista de Suporte', '1989-01-30', 'F', 63.4, 1.65, 'México'),
('Lucas Mendes', 'Designer de UI/UX', '1992-10-14', 'M', 74.2, 1.72, 'Peru'),
('Caroline Silva', 'Desenvolvedora Android', '1995-02-07', 'F', 68.8, 1.71, 'Brasil'),
('Victor Rocha', 'Administrador de Servidores', '1987-12-25', 'M', 84.5, 1.80, 'Colômbia'),
('Tatiane Lima', 'Programadora Web', '1994-07-18', 'F', 70.4, 1.68, 'Chile'),
('Ricardo Santos', 'Especialista em TI', '1993-06-22', 'M', 78.7, 1.79, 'Brasil'),
('Amanda Costa', 'Desenvolvedora C++', '1992-05-18', 'F', 72.1, 1.69, 'França'),
('Carlos Silva', 'Administrador de TI', '1986-09-23', 'M', 79.4, 1.77, 'Reino Unido'),
('Luciana Almeida', 'Engenheira de Infraestrutura', '1994-08-04', 'F', 66.1, 1.71, 'Argentina'),
('Felipe Costa', 'Desenvolvedor Ruby', '1991-12-08', 'M', 75.9, 1.74, 'Canadá'),
('Raquel Pereira', 'Especialista em Cloud', '1993-11-30', 'F', 70.6, 1.65, 'Portugal'),
('Tiago Silva', 'Desenvolvedor Front-End', '1995-03-17', 'M', 72.9, 1.77, 'Brasil'),
('Fabiana Rocha', 'Consultora de TI', '1989-04-27', 'F', 69.0, 1.69, 'Espanha'),
('Antonio Costa', 'Engenheiro de Rede', '1990-10-14', 'M', 81.4, 1.78, 'Brasil'),
('Isabel Santos', 'Desenvolvedora PHP', '1994-06-18', 'F', 74.7, 1.72, 'México'),
('Luiz Rocha', 'Desenvolvedor JavaScript', '1987-08-22', 'M', 77.8, 1.79, 'França'),
('Carla Santos', 'Arquiteta de TI', '1992-09-10', 'F', 69.9, 1.70, 'Colômbia'),
('Juliano Lima', 'Desenvolvedor Python', '1990-01-03', 'M', 76.1, 1.75, 'Canadá'),
('Priscila Pereira', 'Consultora de Infraestrutura', '1994-02-05', 'F', 68.9, 1.66, 'Brasil'),
('Ricardo Almeida', 'Desenvolvedor Ruby', '1993-11-15', 'M', 73.5, 1.74, 'Reino Unido'),
('Lívia Costa', 'Especialista em TI', '1992-04-21', 'F', 71.2, 1.68, 'Alemanha'),
('Alexandre Souza', 'Programador Mobile', '1991-01-12', 'M', 80.4, 1.80, 'Brasil'),
('Samantha Rocha', 'Desenvolvedora Web', '1993-08-18', 'F', 72.0, 1.71, 'Espanha'),
('Felipe Lima', 'Administrador de Sistemas', '1989-02-15', 'M', 79.6, 1.77, 'Chile'),
('Viviane Almeida', 'Engenheira de Software', '1994-09-08', 'F', 65.7, 1.69, 'Portugal'),
('Marcelo Costa', 'Desenvolvedor Java', '1992-07-19', 'M', 78.1, 1.80, 'Brasil');


select * from alunos;
SELECT * FROM alunos
ORDER BY nascimento DESC ;

SELECT nascimento,nome,id FROM alunos
ORDER BY nascimento, nome ASC ;

SELECT nome,carga,descrição, ano FROM cursos 
where  ano > 2015 && ano < 2023
ORDER by  carga, ano, nome;

SELECT nome,carga,descrição, ano FROM cursos 
where  ano between 2016 and 2022
ORDER by  carga, ano, nome;



SELECT nome,carga,descrição, ano FROM cursos 
where  ano in (2016,2023)
ORDER by  ano desc, nome asc;


select  * from alunos 
where nome like 'E%';

select  * from alunos 
where nome like '%a';

select  * from alunos 
where nome like '%a%';


select  * from alunos 
where nome like '%i%';

select  * from alunos 
where nome not like '%i%';

select  * from alunos 
where nome like 'I_a__e%';

select nome, nascimento from alunos
where nome like '%lima%'
;

select * from alunos;

desc alunos;


UPDATE `cadastro`.`alunos` SET `prof` = 'programador' WHERE (`id` = '4');

select * from alunos 
where nacionalidade = 'Brasil';



select nacionalidade from alunos;

DELETE FROM alunos
WHERE id >= 10;

select * from alunos ;





