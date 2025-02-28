use cadastro ;

rename table gafanhotos to alunos;


INSERT INTO alunos (nome, prof, nascimento, sexo, peso, altura, nacionalidade) 
VALUES 
('Lucas Oliveira', 'Desenvolvedor Front-End', '1995-04-22', 'M', 72.5, 1.75, 'Brasileiro'),
('Ana Silva', 'Desenvolvedora Full Stack', '1992-08-15', 'F', 58.0, 1.68, 'Brasileira'),
('John Smith', 'Engenheiro de Software', '1988-11-30', 'M', 80.0, 1.80, 'Americano'),
('Emily Johnson', 'Desenvolvedora Web', '1990-02-17', 'F', 62.0, 1.70, 'Americana'),
('Carlos García', 'Desenvolvedor Web', '1993-07-05', 'M', 76.0, 1.77, 'Espanhol'),
('María Fernández', 'Engenheira de Software', '1994-03-20', 'F', 65.0, 1.65, 'Espanhola'),
('Pierre Dupont', 'Desenvolvedor Front-End', '1989-12-13', 'M', 82.0, 1.78, 'Francês'),
('Claire Martin', 'Desenvolvedora Back-End', '1991-09-07', 'F', 60.0, 1.67, 'Francesa'),
('Hans Müller', 'Engenheiro de Software', '1987-10-10', 'M', 78.5, 1.80, 'Alemão'),
('Anna Schneider', 'Programadora', '1992-05-09', 'F', 62.5, 1.69, 'Alemã'),
('Giovanni Rossi', 'Desenvolvedor de Software', '1990-06-25', 'M', 84.0, 1.85, 'Italiano'),
('Francesca Bianchi', 'Desenvolvedora Web', '1994-09-11', 'F', 60.0, 1.66, 'Italiana'),
('Taro Yamada', 'Programador', '1988-01-22', 'M', 72.0, 1.75, 'Japonês'),
('Yuki Tanaka', 'Engenheira de Sistemas', '1992-07-30', 'F', 55.5, 1.63, 'Japonesa'),
('Sven Hansen', 'Desenvolvedor de Software', '1990-11-05', 'M', 79.0, 1.77, 'Dinamarquês'),
('Mette Sørensen', 'Desenvolvedora Full Stack', '1993-02-21', 'F', 62.0, 1.68, 'Dinamarquesa'),
('Vladimir Ivanov', 'Programador', '1985-03-15', 'M', 85.0, 1.82, 'Russo'),
('Olga Petrova', 'Desenvolvedora de Software', '1994-06-02', 'F', 59.0, 1.64, 'Russa'),
('José Pérez', 'Desenvolvedor Full Stack', '1991-08-12', 'M', 77.0, 1.76, 'Mexicano'),
('Lucía Rodríguez', 'Desenvolvedora de Software', '1993-05-21', 'F', 64.0, 1.69, 'Mexicana'),
('David Lee', 'Desenvolvedor de Software', '1990-12-17', 'M', 76.5, 1.78, 'Chinês'),
('Mei Wong', 'Desenvolvedora Front-End', '1992-04-08', 'F', 54.0, 1.62, 'Chinesa'),
('Omar Hassan', 'Desenvolvedor Back-End', '1993-03-15', 'M', 83.0, 1.80, 'Egípcio'),
('Layla Ali', 'Desenvolvedora Front-End', '1990-09-22', 'F', 58.5, 1.65, 'Egípcia'),
('Carlos Santos', 'Desenvolvedor de Software', '1991-01-04', 'M', 81.0, 1.80, 'Português'),
('Mariana Costa', 'Desenvolvedora de Software', '1993-10-29', 'F', 59.5, 1.67, 'Portuguesa'),
('William Brown', 'Desenvolvedor Full Stack', '1986-07-19', 'M', 88.0, 1.85, 'Inglês'),
('Olivia Green', 'Desenvolvedora Back-End', '1992-11-10', 'F', 62.0, 1.70, 'Inglesa'),
('Emmanuel Mbaye', 'Desenvolvedor Web', '1992-09-10', 'M', 80.0, 1.78, 'Senegalês'),
('Aissatou Ndiaye', 'Desenvolvedora Front-End', '1993-12-14', 'F', 63.0, 1.67, 'Senegalesa'),
('Matthias Weber', 'Engenheiro de Software', '1989-04-13', 'M', 78.0, 1.79, 'Austriaco'),
('Sabine Müller', 'Programadora', '1991-02-28', 'F', 61.0, 1.65, 'Austríaca'),
('Ali Reza', 'Programador', '1994-07-06', 'M', 85.0, 1.82, 'Iraniano'),
('Sara Kian', 'Desenvolvedora de Software', '1993-11-09', 'F', 59.0, 1.64, 'Iraniana'),
('Jorge López', 'Desenvolvedor Full Stack', '1992-05-16', 'M', 74.0, 1.75, 'Colombiano'),
('Catalina Gómez', 'Desenvolvedora de Software', '1993-09-01', 'F', 60.0, 1.68, 'Colombiana'),
('Khalid Al-Farsi', 'Desenvolvedor Front-End', '1990-03-08', 'M', 77.5, 1.77, 'Emiradense'),
('Fatima Al-Mansouri', 'Desenvolvedora Back-End', '1992-12-17', 'F', 59.0, 1.65, 'Emiradense'),
('Maxim Petrov', 'Programador', '1992-09-26', 'M', 75.5, 1.78, 'Búlgaro'),
('Kristina Ivanova', 'Desenvolvedora de Software', '1993-01-11', 'F', 61.0, 1.66, 'Búlgara'),
('Dmitri Ivanov', 'Engenheiro de Software', '1990-10-02', 'M', 84.0, 1.81, 'Ucraniano'),
('Anastasia Orlova', 'Desenvolvedora de Software', '1992-08-19', 'F', 60.5, 1.63, 'Ucraniana'),
('Juan García', 'Desenvolvedor Web', '1991-03-20', 'M', 78.0, 1.74, 'Espanhol'),
('Lucía Martínez', 'Desenvolvedora Front-End', '1993-07-14', 'F', 59.5, 1.67, 'Espanhola'),
('David Wang', 'Desenvolvedor Web', '1991-12-22', 'M', 79.0, 1.76, 'Chinês'),
('Fang Li', 'Desenvolvedora Front-End', '1992-06-05', 'F', 57.0, 1.62, 'Chinesa'),
('Raul Oliveira', 'Desenvolvedor Back-End', '1990-11-04', 'M', 82.0, 1.79, 'Brasileiro'),
('Luana Almeida', 'Desenvolvedora Full Stack', '1993-04-14', 'F', 60.0, 1.68, 'Brasileira'),
('Marco Rossi', 'Desenvolvedor Web', '1992-07-22', 'M', 76.0, 1.77, 'Italiano'),
('Giulia Ricci', 'Desenvolvedora de Software', '1994-01-30', 'F', 62.5, 1.69, 'Italiana'),
('Carlos Martínez', 'Desenvolvedor Full Stack', '1989-05-11', 'M', 75.0, 1.78, 'Mexicano'),
('Andrea Hernández', 'Desenvolvedora de Software', '1991-06-30', 'F', 64.0, 1.66, 'Mexicana'),
('Lucas Moreira', 'Desenvolvedor Front-End', '1993-10-07', 'M', 78.0, 1.80, 'Brasileiro'),
('Tatiane Souza', 'Desenvolvedora Back-End', '1992-12-04', 'F', 58.5, 1.64, 'Brasileira'),
('Marta Santos', 'Desenvolvedora Front-End', '1990-03-19', 'F', 60.0, 1.67, 'Portuguesa'),
('Carlos Pinto', 'Desenvolvedor Full Stack', '1991-05-08', 'M', 82.0, 1.79, 'Português'),
('Ricardo López', 'Desenvolvedor de Software', '1994-11-30', 'M', 79.0, 1.77, 'Español'),
('Paula García', 'Desenvolvedora Web', '1993-08-15', 'F', 63.5, 1.68, 'Espanhola');


INSERT INTO cursos (idcurso, nome, descrição, carga, totalaulas, ano) VALUES
(41, 'Lógica de Programação', 'Desenvolva raciocínio lógico com algoritmos e resolução de problemas.', 30, 15, 2022),
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



select * from alunos;
select * from cursos where carga > 60
order by carga;

select count(*) from cursos where carga > 60;

select distinct nacionalidade, nome from alunos
order by nacionalidade, nome;

select distinct carga from cursos
order by carga;

select max(carga) from cursos;

select max(totalaulas) from cursos where ano = '2023';
select min(totalaulas) from cursos where ano = '2023';
select min(totalaulas)from cursos;

select sum(totalaulas) from cursos where ano = '2023';

select avg(totalaulas) from cursos where ano = '2023';

select * from cursos
order by totalaulas;


desc cursos;





