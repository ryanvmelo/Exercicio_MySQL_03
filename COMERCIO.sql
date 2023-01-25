-- ENDEREÇO (OBRIGAÓRIO, MÁXIMO 1)
-- TELEFONE (NÃO OBRIGATÓRIO, 1 OU MAIS)

CREATE DATABASE COMERCIO;

USE COMERCIO;

CREATE TABLE CLIENTE
(
	ID_CLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(50) NOT NULL,
	CPF VARCHAR (11) UNIQUE NOT NULL,
	EMAIL VARCHAR(30)UNIQUE,
	SEXO ENUM('M','F') NOT NULL
);

SHOW TABLES; 
DESC CLIENTE;

CREATE TABLE ENDEREÇO
(
	ID_ENDERECO INT PRIMARY KEY AUTO_INCREMENT,
	RUA VARCHAR(100) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL,
	ESTADO CHAR(2) NOT NULL,
	FK_CLIENTE INT UNIQUE,
	FOREIGN KEY (FK_CLIENTE) REFERENCES CLIENTE (ID_CLIENTE)
);

SHOW TABLES; 
DESC ENDEREÇO;

CREATE TABLE TELEFONE
(
	ID_TELEFONE INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM('RESIDENCIALIDENCIAL','COMERCIAL','CELULAR') NOT NULL,
	NUMERO CHAR(15) NOT NULL,
	FK_CLIENTE INT,
	FOREIGN KEY (FK_CLIENTE) REFERENCES CLIENTE (ID_CLIENTE)
);

SHOW TABLES; 
DESC TELEFONE;


INSERT INTO CLIENTE VALUES(NULL,'JOAO','12345678901','JOAO@MAIL.COM','M');
INSERT INTO CLIENTE VALUES(NULL,'MARIA','98765432101','MARIA@MAIL.COM','F');
INSERT INTO CLIENTE VALUES(NULL,'JOSE','56195532178','JOSE@MAIL.COM','M');
INSERT INTO CLIENTE VALUES(NULL,'CAROLINA','54541691651',NULL,'F');
INSERT INTO CLIENTE VALUES(NULL,'ALEX','06464646464','ALEX@MAIL.COM','M');
INSERT INTO CLIENTE VALUES(NULL,'ANA','96385274101',NULL,'F');


INSERT INTO ENDEREÇO VALUES(NULL,'AVENIDA PRESIDENCIALIDENTE VARGAS','CENTRO','BELÉM','PA',2);
INSERT INTO ENDEREÇO VALUES(NULL,'AVENIDA MAURO RAMOS','CENTRO','FLORIANÓPOLIS','SC',1);
INSERT INTO ENDEREÇO VALUES(NULL,'AVENIDA PAULISTA','CONSOLAÇÃO','SÃO PAULO','SP',4);
INSERT INTO ENDEREÇO VALUES(NULL,'RUA XV DE NOVEMBRO','CENTRO','CURITIBA','PR',5);
INSERT INTO ENDEREÇO VALUES(NULL,'AVENIDA MEM DE SÁ','CENTRO','RIO DE JANEIRO','RJ',6);
INSERT INTO ENDEREÇO VALUES(NULL,'RUA ANTONIO SA','CENTRO','BELO HORIZONTE','MG',3);


INSERT INTO TELEFONE VALUES(NULL,'RESIDENCIALIDENCIAL','147258963',5);
INSERT INTO TELEFONE VALUES(NULL,'COMERCIAL','741852963',5);
INSERT INTO TELEFONE VALUES(NULL,'CELULAR','369852147',5);
INSERT INTO TELEFONE VALUES(NULL,'CELULAR','852369741',1);
INSERT INTO TELEFONE VALUES(NULL,'RESIDENCIALIDENCIAL','789456123',2);
INSERT INTO TELEFONE VALUES(NULL,'COMERCIAL','654987321',6);
INSERT INTO TELEFONE VALUES(NULL,'CELULAR','987321456',3);
INSERT INTO TELEFONE VALUES(NULL,'RESIDENCIALIDENCIAL','951753684',3);

-- CADASTRO DE CLIENTE

INSERT INTO CLIENTE VALUES(NULL,'FLAVIO','4657765','FLAVIO@IG.COM','M');
INSERT INTO CLIENTE VALUES(NULL,'ANDRE','7687567','ANDRE@GLOBO.COM','M');
INSERT INTO CLIENTE VALUES(NULL,'GIOVANA','0876655',NULL,'F');
INSERT INTO CLIENTE VALUES(NULL,'KARLA','545676778','KARLA@GMAIL.COM','F');
INSERT INTO CLIENTE VALUES(NULL,'DANIELE','43536789','DANIELE@GMAIL.COM','F');
INSERT INTO CLIENTE VALUES(NULL,'LORENA','774557887',NULL,'F');
INSERT INTO CLIENTE VALUES(NULL,'EDUARDO','54376457',NULL,'M');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','12436767','ANTONIO@IG.COM','M');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','3423565','ANTONIO@UOL.COM','M');
INSERT INTO CLIENTE VALUES(NULL,'ELAINE','32567763','ELAINE@GLOBO.COM','F');
INSERT INTO CLIENTE VALUES(NULL,'CARMEM','787832213','CARMEM@IG.COM','F');
INSERT INTO CLIENTE VALUES(NULL,'ADRIANA','88556942','ADRIANA@GMAIL.COM','F');
INSERT INTO CLIENTE VALUES(NULL,'JOICE','55412256','JOICE@GMAIL.COM','F');
INSERT INTO CLIENTE VALUES(NULL,'RYAN','12345696314',NULL,'M');
INSERT INTO CLIENTE VALUES(NULL,'ADSON','45696325874','ADSON@MAIL.COM','M');
INSERT INTO CLIENTE VALUES(NULL,'DAVI','25896178324','DAVI@MAIL.COM','M');

+------------+----------+-------------+-------------------+------+
| ID_CLIENTE | NOME     | CPF         | EMAIL             | SEXO |
+------------+----------+-------------+-------------------+------+
|          1 | JOAO     | 12345678901 | JOAO@MAIL.COM     | M    |
|          2 | MARIA    | 98765432101 | MARIA@MAIL.COM    | F    |
|          3 | JOSE     | 56195532178 | JOSE@MAIL.COM     | M    |
|          4 | CAROLINA | 54541691651 | NULL              | F    |
|          5 | ALEX     | 06464646464 | ALEX@MAIL.COM     | M    |
|          6 | ANA      | 96385274101 | NULL              | F    |
|          7 | FLAVIO   | 4657765     | FLAVIO@IG.COM     | M    |
|          8 | ANDRE    | 7687567     | ANDRE@GLOBO.COM   | M    |
|          9 | GIOVANA  | 0876655     | NULL              | F    |
|         10 | KARLA    | 545676778   | KARLA@GMAIL.COM   | F    |
|         11 | DANIELE  | 43536789    | DANIELE@GMAIL.COM | F    |
|         12 | LORENA   | 774557887   | NULL              | F    |
|         13 | EDUARDO  | 54376457    | NULL              | M    |
|         14 | ANTONIO  | 12436767    | ANTONIO@IG.COM    | M    |
|         15 | ANTONIO  | 3423565     | ANTONIO@UOL.COM   | M    |
|         16 | ELAINE   | 32567763    | ELAINE@GLOBO.COM  | F    |
|         17 | CARMEM   | 787832213   | CARMEM@IG.COM     | F    |
|         18 | ADRIANA  | 88556942    | ADRIANA@GMAIL.COM | F    |
|         19 | JOICE    | 55412256    | JOICE@GMAIL.COM   | F    |
|         20 | RYAN     | 12345696314 | NULL              | M    |
|         21 | ADSON    | 45696325874 | ADSON@MAIL.COM    | M    |
|         22 | DAVI     | 25896178324 | DAVI@MAIL.COM     | M    |
+------------+----------+-------------+-------------------+------+

-- CADASTRO DE ENDEREÇO
INSERT INTO ENDEREÇO VALUES(NULL,'RUA GUEDES','CASCADURA','B. HORIZONTE','MG',7);
INSERT INTO ENDEREÇO VALUES(NULL,'RUA MAIA LACERDA','ESTACIO','RIO DE JANEIRO','RJ',8);
INSERT INTO ENDEREÇO VALUES(NULL,'RUA VISCONDESSA','CENTRO','RIO DE JANEIRO','RJ',9);
INSERT INTO ENDEREÇO VALUES(NULL,'RUA NELSON MANDELA','COPACABANA','RIO DE JANEIRO','RJ',10);
INSERT INTO ENDEREÇO VALUES(NULL,'RUA ARAUJO LIMA','CENTRO','VITORIA','ES',11);
INSERT INTO ENDEREÇO VALUES(NULL,'RUA CASTRO ALVES','LEBLON','RIO DE JANEIRO','RJ',12);
INSERT INTO ENDEREÇO VALUES(NULL,'AV CAPITAO ANTUNES','CENTRO','CURITIBA','PR',13);
INSERT INTO ENDEREÇO VALUES(NULL,'AV CARLOS BARROSO','JARDINS','SAO PAULO','SP',14);
INSERT INTO ENDEREÇO VALUES(NULL,'ALAMEDA SAMPAIO','BOM RETIRO','CURITIBA','PR',15);
INSERT INTO ENDEREÇO VALUES(NULL,'RUA DA LAPA','LAPA','SAO PAULO','SP',16);
INSERT INTO ENDEREÇO VALUES(NULL,'RUA GERONIMO','CENTRO','RIO DE JANEIRO','RJ',17);
INSERT INTO ENDEREÇO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',18);
INSERT INTO ENDEREÇO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',19);
INSERT INTO ENDEREÇO VALUES(NULL, 'SERVIDÃO FRANZONI', 'AGRONÔMICA', 'FLORIANÓPOLIS', 'SC', 20)
INSERT INTO ENDEREÇO VALUES(NULL, 'RUA UBERLANDIA', 'ELETRONORTE', 'PORTO VELHO', 'RO', 21);
INSERT INTO ENDEREÇO VALUES(NULL, 'RUA UBERLANDIA', 'ELETRONORTE', 'PORTO VELHO', 'RO', 22);

+-------------+---------------------------+--------------+----------------+--------+------------+
| ID_ENDERECO | RUA                       | BAIRRO       | CIDADE         | ESTADO | FK_CLIENTE |
+-------------+---------------------------+--------------+----------------+--------+------------+
|           1 | AVENIDA PRESIDENTE VARGAS | CENTRO       | BELÉM          | PA     |          2 |
|           2 | AVENIDA MAURO RAMOS       | CENTRO       | FLORIANÓPOLIS  | SC     |          1 |
|           3 | AVENIDA PAULISTA          | CONSOLAÇÃO   | SÃO PAULO      | SP     |          4 |
|           4 | RUA XV DE NOVEMBRO        | CENTRO       | CURITIBA       | PR     |          5 |
|           5 | AVENIDA MEM DE SÁ         | CENTRO       | RIO DE JANEIRO | RJ     |          6 |
|           6 | RUA ANTONIO SA            | CENTRO       | BELO HORIZONTE | MG     |          3 |
|           7 | RUA GUEDES                | CASCADURA    | B. HORIZONTE   | MG     |          7 |
|           8 | RUA MAIA LACERDA          | ESTACIO      | RIO DE JANEIRO | RJ     |          8 |
|           9 | RUA VISCONDESSA           | CENTRO       | RIO DE JANEIRO | RJ     |          9 |
|          10 | RUA NELSON MANDELA        | COPACABANA   | RIO DE JANEIRO | RJ     |         10 |
|          11 | RUA ARAUJO LIMA           | CENTRO       | VITORIA        | ES     |         11 |
|          12 | RUA CASTRO ALVES          | LEBLON       | RIO DE JANEIRO | RJ     |         12 |
|          13 | AV CAPITAO ANTUNES        | CENTRO       | CURITIBA       | PR     |         13 |
|          14 | AV CARLOS BARROSO         | JARDINS      | SAO PAULO      | SP     |         14 |
|          15 | ALAMEDA SAMPAIO           | BOM RETIRO   | CURITIBA       | PR     |         15 |
|          16 | RUA DA LAPA               | LAPA         | SAO PAULO      | SP     |         16 |
|          17 | RUA GERONIMO              | CENTRO       | RIO DE JANEIRO | RJ     |         17 |
|          18 | RUA GOMES FREIRE          | CENTRO       | RIO DE JANEIRO | RJ     |         18 |
|          19 | RUA GOMES FREIRE          | CENTRO       | RIO DE JANEIRO | RJ     |         19 |
|          20 | SERVIDÃO FRANZONI         | AGRONÔMICA   | FLORIANÓPOLIS  | SC     |         20 |
|          21 | RUA UBERLANDIA            | ELETRONORTE  | PORTO VELHO    | RO     |         21 |
|          22 | RUA UBERLANDIA            | ELETRONORTE  | PORTO VELHO    | RO     |         22 |
+-------------+---------------------------+--------------+----------------+--------+------------+

-- CADASTRO DE TELEFONE

INSERT INTO TELEFONE VALUES(NULL,'RESIDENCIAL','68976565',7);
INSERT INTO TELEFONE VALUES(NULL,'CELULAR','99656675',7);
INSERT INTO TELEFONE VALUES(NULL,'CELULAR','33567765',9);
INSERT INTO TELEFONE VALUES(NULL,'CELULAR','88668786',9);
INSERT INTO TELEFONE VALUES(NULL,'COMERCIAL','55689654',9);
INSERT INTO TELEFONE VALUES(NULL,'COMERCIAL','88687979',10);
INSERT INTO TELEFONE VALUES(NULL,'COMERCIAL','88965676',11);
INSERT INTO TELEFONE VALUES(NULL,'CELULAR','89966809',13);
INSERT INTO TELEFONE VALUES(NULL,'COMERCIAL','88679978',14);
INSERT INTO TELEFONE VALUES(NULL,'CELULAR','99655768',15);
INSERT INTO TELEFONE VALUES(NULL,'RESIDENCIAL','89955665',16);
INSERT INTO TELEFONE VALUES(NULL,'RESIDENCIAL','77455786',17);
INSERT INTO TELEFONE VALUES(NULL,'RESIDENCIAL','89766554',17);
INSERT INTO TELEFONE VALUES(NULL,'RESIDENCIAL','77755785',18);
INSERT INTO TELEFONE VALUES(NULL,'COMERCIAL','44522578',18);
INSERT INTO TELEFONE VALUES(NULL,'COMERCIAL','40028922',20);
INSERT INTO TELEFONE VALUES(NULL,'CELULAR','91903592',21)

+-------------+-------------+-----------+------------+
| ID_TELEFONE | TIPO        | NUMERO    | FK_CLIENTE |
+-------------+-------------+-----------+------------+
|           1 | RESIDENCIAL | 147258963 |          5 |
|           2 | COMERCIAL   | 741852963 |          5 |
|           3 | CELULAR     | 369852147 |          5 |
|           4 | CELULAR     | 852369741 |          1 |
|           5 | RESIDENCIAL | 789456123 |          2 |
|           6 | COMERCIAL   | 654987321 |          6 |
|           7 | CELULAR     | 987321456 |          3 |
|           8 | RESIDENCIAL | 951753684 |          3 |
|           9 | RESIDENCIAL | 68976565  |          7 |
|          10 | CELULAR     | 99656675  |          7 |
|          11 | CELULAR     | 33567765  |          9 |
|          12 | CELULAR     | 88668786  |          9 |
|          13 | COMERCIAL   | 55689654  |          9 |
|          14 | COMERCIAL   | 88687979  |         10 |
|          15 | COMERCIAL   | 88965676  |         11 |
|          16 | CELULAR     | 89966809  |         13 |
|          17 | COMERCIAL   | 88679978  |         14 |
|          18 | CELULAR     | 99655768  |         15 |
|          19 | RESIDENCIAL | 89955665  |         16 |
|          20 | RESIDENCIAL | 77455786  |         17 |
|          21 | RESIDENCIAL | 89766554  |         17 |
|          22 | RESIDENCIAL | 77755785  |         18 |
|          23 | COMERCIAL   | 44522578  |         18 |
+-------------+-------------+-----------+------------+

-- RELATORIO GERAL DE TODOS OS CLIENTES

DESC CLIENTE;
DESC ENDEREÇO;
DESC TELEFONE;

SELECT C.ID_CLIENTE, C.NOME, C.CPF, C.EMAIL, C.SEXO,
	   E.ID_ENDERECO, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO,
	   T.ID_TELEFONE, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDEREÇO E
ON C.ID_CLIENTE = E.FK_CLIENTE
INNER JOIN TELEFONE T
ON C.ID_CLIENTE = T.FK_CLIENTE
ORDER BY ID_CLIENTE;

+------------+---------+-------------+-------------------+------+-------------+---------------------------+-------------+----------------+--------+-------------+-------------+-----------+
| ID_CLIENTE | NOME    | CPF         | EMAIL             | SEXO | ID_ENDERECO | RUA                       | BAIRRO      | CIDADE         | ESTADO | ID_TELEFONE | TIPO        | NUMERO    |
+------------+---------+-------------+-------------------+------+-------------+---------------------------+-------------+----------------+--------+-------------+-------------+-----------+
|          1 | JOAO    | 12345678901 | JOAO@MAIL.COM     | M    |           2 | AVENIDA MAURO RAMOS       | CENTRO      | FLORIANÓPOLIS  | SC     |           4 | CELULAR     | 852369741 |
|          2 | MARIA   | 98765432101 | MARIA@MAIL.COM    | F    |           1 | AVENIDA PRESIDENTE VARGAS | CENTRO      | BELÉM          | PA     |           5 | RESIDENCIAL | 789456123 |
|          3 | JOSE    | 56195532178 | JOSE@MAIL.COM     | M    |           6 | RUA ANTONIO SA            | CENTRO      | BELO HORIZONTE | MG     |           7 | CELULAR     | 987321456 |
|          3 | JOSE    | 56195532178 | JOSE@MAIL.COM     | M    |           6 | RUA ANTONIO SA            | CENTRO      | BELO HORIZONTE | MG     |           8 | RESIDENCIAL | 951753684 |
|          5 | ALEX    | 06464646464 | ALEX@MAIL.COM     | M    |           4 | RUA XV DE NOVEMBRO        | CENTRO      | CURITIBA       | PR     |           1 | RESIDENCIAL | 147258963 |
|          5 | ALEX    | 06464646464 | ALEX@MAIL.COM     | M    |           4 | RUA XV DE NOVEMBRO        | CENTRO      | CURITIBA       | PR     |           2 | COMERCIAL   | 741852963 |
|          5 | ALEX    | 06464646464 | ALEX@MAIL.COM     | M    |           4 | RUA XV DE NOVEMBRO        | CENTRO      | CURITIBA       | PR     |           3 | CELULAR     | 369852147 |
|          6 | ANA     | 96385274101 | NULL              | F    |           5 | AVENIDA MEM DE SÁ         | CENTRO      | RIO DE JANEIRO | RJ     |           6 | COMERCIAL   | 654987321 |
|          7 | FLAVIO  | 4657765     | FLAVIO@IG.COM     | M    |           7 | RUA GUEDES                | CASCADURA   | B. HORIZONTE   | MG     |           9 | RESIDENCIAL | 68976565  |
|          7 | FLAVIO  | 4657765     | FLAVIO@IG.COM     | M    |           7 | RUA GUEDES                | CASCADURA   | B. HORIZONTE   | MG     |          10 | CELULAR     | 99656675  |
|          9 | GIOVANA | 0876655     | NULL              | F    |           9 | RUA VISCONDESSA           | CENTRO      | RIO DE JANEIRO | RJ     |          11 | CELULAR     | 33567765  |
|          9 | GIOVANA | 0876655     | NULL              | F    |           9 | RUA VISCONDESSA           | CENTRO      | RIO DE JANEIRO | RJ     |          12 | CELULAR     | 88668786  |
|          9 | GIOVANA | 0876655     | NULL              | F    |           9 | RUA VISCONDESSA           | CENTRO      | RIO DE JANEIRO | RJ     |          13 | COMERCIAL   | 55689654  |
|         10 | KARLA   | 545676778   | KARLA@GMAIL.COM   | F    |          10 | RUA NELSON MANDELA        | COPACABANA  | RIO DE JANEIRO | RJ     |          14 | COMERCIAL   | 88687979  |
|         11 | DANIELE | 43536789    | DANIELE@GMAIL.COM | F    |          11 | RUA ARAUJO LIMA           | CENTRO      | VITORIA        | ES     |          15 | COMERCIAL   | 88965676  |
|         13 | EDUARDO | 54376457    | NULL              | M    |          13 | AV CAPITAO ANTUNES        | CENTRO      | CURITIBA       | PR     |          16 | CELULAR     | 89966809  |
|         14 | ANTONIO | 12436767    | ANTONIO@IG.COM    | M    |          14 | AV CARLOS BARROSO         | JARDINS     | SAO PAULO      | SP     |          17 | COMERCIAL   | 88679978  |
|         15 | ANTONIO | 3423565     | ANTONIO@UOL.COM   | M    |          15 | ALAMEDA SAMPAIO           | BOM RETIRO  | CURITIBA       | PR     |          18 | CELULAR     | 99655768  |
|         16 | ELAINE  | 32567763    | ELAINE@GLOBO.COM  | F    |          16 | RUA DA LAPA               | LAPA        | SAO PAULO      | SP     |          19 | RESIDENCIAL | 89955665  |
|         17 | CARMEM  | 787832213   | CARMEM@IG.COM     | F    |          17 | RUA GERONIMO              | CENTRO      | RIO DE JANEIRO | RJ     |          20 | RESIDENCIAL | 77455786  |
|         17 | CARMEM  | 787832213   | CARMEM@IG.COM     | F    |          17 | RUA GERONIMO              | CENTRO      | RIO DE JANEIRO | RJ     |          21 | RESIDENCIAL | 89766554  |
|         18 | ADRIANA | 88556942    | ADRIANA@GMAIL.COM | F    |          18 | RUA GOMES FREIRE          | CENTRO      | RIO DE JANEIRO | RJ     |          22 | RESIDENCIAL | 77755785  |
|         18 | ADRIANA | 88556942    | ADRIANA@GMAIL.COM | F    |          18 | RUA GOMES FREIRE          | CENTRO      | RIO DE JANEIRO | RJ     |          23 | COMERCIAL   | 44522578  |
|         20 | RYAN    | 12345696314 | NULL              | M    |          20 | SERVIDÃO FRANZONI         | AGRONÔMICA  | FLORIANÓPOLIS  | SC     |          24 | COMERCIAL   | 40028922  |
|         21 | ADSON   | 45696325874 | ADSON@MAIL        | M    |          21 | RUA UBERLANDIA            | ELETRONORTE | PORTO VELHO    | RO     |          25 | CELULAR     | 91903592  |
+------------+---------+-------------+-------------------+------+-------------+---------------------------+-------------+----------------+--------+-------------+-------------+-----------+

-- RELATORIO DE HOMENS

SELECT C.ID_CLIENTE, C.NOME, C.CPF, C.EMAIL, C.SEXO,
	   E.ID_ENDERECO, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO,
	   T.ID_TELEFONE, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDEREÇO E
ON C.ID_CLIENTE = E.FK_CLIENTE
INNER JOIN TELEFONE T
ON C.ID_CLIENTE = T.FK_CLIENTE 
WHERE SEXO = 'M'
ORDER BY ID_CLIENTE;

+------------+---------+-------------+-----------------+------+-------------+---------------------+-------------+----------------+--------+-------------+-------------+-----------+
| ID_CLIENTE | NOME    | CPF         | EMAIL           | SEXO | ID_ENDERECO | RUA                 | BAIRRO      | CIDADE         | ESTADO | ID_TELEFONE | TIPO        | NUMERO    |
+------------+---------+-------------+-----------------+------+-------------+---------------------+-------------+----------------+--------+-------------+-------------+-----------+
|          1 | JOAO    | 12345678901 | JOAO@MAIL.COM   | M    |           2 | AVENIDA MAURO RAMOS | CENTRO      | FLORIANÓPOLIS  | SC     |           4 | CELULAR     | 852369741 |
|          3 | JOSE    | 56195532178 | JOSE@MAIL.COM   | M    |           6 | RUA ANTONIO SA      | CENTRO      | BELO HORIZONTE | MG     |           7 | CELULAR     | 987321456 |
|          3 | JOSE    | 56195532178 | JOSE@MAIL.COM   | M    |           6 | RUA ANTONIO SA      | CENTRO      | BELO HORIZONTE | MG     |           8 | RESIDENCIAL | 951753684 |
|          5 | ALEX    | 06464646464 | ALEX@MAIL.COM   | M    |           4 | RUA XV DE NOVEMBRO  | CENTRO      | CURITIBA       | PR     |           1 | RESIDENCIAL | 147258963 |
|          5 | ALEX    | 06464646464 | ALEX@MAIL.COM   | M    |           4 | RUA XV DE NOVEMBRO  | CENTRO      | CURITIBA       | PR     |           2 | COMERCIAL   | 741852963 |
|          5 | ALEX    | 06464646464 | ALEX@MAIL.COM   | M    |           4 | RUA XV DE NOVEMBRO  | CENTRO      | CURITIBA       | PR     |           3 | CELULAR     | 369852147 |
|          7 | FLAVIO  | 4657765     | FLAVIO@IG.COM   | M    |           7 | RUA GUEDES          | CASCADURA   | B. HORIZONTE   | MG     |           9 | RESIDENCIAL | 68976565  |
|          7 | FLAVIO  | 4657765     | FLAVIO@IG.COM   | M    |           7 | RUA GUEDES          | CASCADURA   | B. HORIZONTE   | MG     |          10 | CELULAR     | 99656675  |
|         13 | EDUARDO | 54376457    | NULL            | M    |          13 | AV CAPITAO ANTUNES  | CENTRO      | CURITIBA       | PR     |          16 | CELULAR     | 89966809  |
|         14 | ANTONIO | 12436767    | ANTONIO@IG.COM  | M    |          14 | AV CARLOS BARROSO   | JARDINS     | SAO PAULO      | SP     |          17 | COMERCIAL   | 88679978  |
|         15 | ANTONIO | 3423565     | ANTONIO@UOL.COM | M    |          15 | ALAMEDA SAMPAIO     | BOM RETIRO  | CURITIBA       | PR     |          18 | CELULAR     | 99655768  |
|         20 | RYAN    | 12345696314 | NULL            | M    |          20 | SERVIDÃO FRANZONI   | AGRONÔMICA  | FLORIANÓPOLIS  | SC     |          24 | COMERCIAL   | 40028922  |
|         21 | ADSON   | 45696325874 | ADSON@MAIL      | M    |          21 | RUA UBERLANDIA      | ELETRONORTE | PORTO VELHO    | RO     |          25 | CELULAR     | 91903592  |
+------------+---------+-------------+-----------------+------+-------------+---------------------+-------------+----------------+--------+-------------+-------------+-----------+

-- RELATORIO DE MULHERES

SELECT C.ID_CLIENTE, C.NOME, C.CPF, C.EMAIL, C.SEXO,
	   E.ID_ENDERECO, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO,
	   T.ID_TELEFONE, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDEREÇO E
ON C.ID_CLIENTE = E.FK_CLIENTE
INNER JOIN TELEFONE T
ON C.ID_CLIENTE = T.FK_CLIENTE
WHERE SEXO = 'F'
ORDER BY ID_CLIENTE;

+------------+---------+-------------+-------------------+------+-------------+---------------------------+------------+----------------+--------+-------------+-------------+-----------+
| ID_CLIENTE | NOME    | CPF         | EMAIL             | SEXO | ID_ENDERECO | RUA                       | BAIRRO     | CIDADE         | ESTADO | ID_TELEFONE | TIPO        | NUMERO    |
+------------+---------+-------------+-------------------+------+-------------+---------------------------+------------+----------------+--------+-------------+-------------+-----------+
|          2 | MARIA   | 98765432101 | MARIA@MAIL.COM    | F    |           1 | AVENIDA PRESIDENTE VARGAS | CENTRO     | BELÉM          | PA     |           5 | RESIDENCIAL | 789456123 |
|          6 | ANA     | 96385274101 | NULL              | F    |           5 | AVENIDA MEM DE SÁ         | CENTRO     | RIO DE JANEIRO | RJ     |           6 | COMERCIAL   | 654987321 |
|          9 | GIOVANA | 0876655     | NULL              | F    |           9 | RUA VISCONDESSA           | CENTRO     | RIO DE JANEIRO | RJ     |          11 | CELULAR     | 33567765  |
|          9 | GIOVANA | 0876655     | NULL              | F    |           9 | RUA VISCONDESSA           | CENTRO     | RIO DE JANEIRO | RJ     |          12 | CELULAR     | 88668786  |
|          9 | GIOVANA | 0876655     | NULL              | F    |           9 | RUA VISCONDESSA           | CENTRO     | RIO DE JANEIRO | RJ     |          13 | COMERCIAL   | 55689654  |
|         10 | KARLA   | 545676778   | KARLA@GMAIL.COM   | F    |          10 | RUA NELSON MANDELA        | COPACABANA | RIO DE JANEIRO | RJ     |          14 | COMERCIAL   | 88687979  |
|         11 | DANIELE | 43536789    | DANIELE@GMAIL.COM | F    |          11 | RUA ARAUJO LIMA           | CENTRO     | VITORIA        | ES     |          15 | COMERCIAL   | 88965676  |
|         16 | ELAINE  | 32567763    | ELAINE@GLOBO.COM  | F    |          16 | RUA DA LAPA               | LAPA       | SAO PAULO      | SP     |          19 | RESIDENCIAL | 89955665  |
|         17 | CARMEM  | 787832213   | CARMEM@IG.COM     | F    |          17 | RUA GERONIMO              | CENTRO     | RIO DE JANEIRO | RJ     |          20 | RESIDENCIAL | 77455786  |
|         17 | CARMEM  | 787832213   | CARMEM@IG.COM     | F    |          17 | RUA GERONIMO              | CENTRO     | RIO DE JANEIRO | RJ     |          21 | RESIDENCIAL | 89766554  |
|         18 | ADRIANA | 88556942    | ADRIANA@GMAIL.COM | F    |          18 | RUA GOMES FREIRE          | CENTRO     | RIO DE JANEIRO | RJ     |          22 | RESIDENCIAL | 77755785  |
|         18 | ADRIANA | 88556942    | ADRIANA@GMAIL.COM | F    |          18 | RUA GOMES FREIRE          | CENTRO     | RIO DE JANEIRO | RJ     |          23 | COMERCIAL   | 44522578  |
+------------+---------+-------------+-------------------+------+-------------+---------------------------+------------+----------------+--------+-------------+-------------+-----------+

-- QUANTIDADE DE HOMENS E MULHERES

SELECT SEXO, COUNT(*) AS TOTAL
FROM CLIENTE
GROUP BY SEXO;

+------+-------+
| SEXO | TOTAL |
+------+-------+
| M    |    11 |
| F    |    11 |
+------+-------+

-- ID'S E E-MAILS DAS MULHERES QUE MOREM NO CENTRO DO RIO DE JANEIRO E NÃO TENHAM CELULAR

SELECT C.ID_CLIENTE, C.EMAIL, C.SEXO, E.BAIRRO, E.CIDADE, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDEREÇO E
ON C.ID_CLIENTE = E.FK_CLIENTE
INNER JOIN TELEFONE T
ON C.ID_CLIENTE = T.FK_CLIENTE
WHERE (E.BAIRRO = 'CENTRO' AND E.CIDADE = 'RIO DE JANEIRO') AND (SEXO = 'F') AND (NUMERO IS NULL);

Empty set

-- NOME, E-MAIL E TELEFONE DOS CLIENTES QUE MOREM NO ESTADO DO RIO DE JANEIRO

SELECT C.NOME, C.SEXO, C.EMAIL, T.NUMERO, T.TIPO, E.ESTADO
FROM CLIENTE C
INNER JOIN TELEFONE T
ON C.ID_CLIENTE = T.FK_CLIENTE
INNER JOIN ENDEREÇO E
ON C.ID_CLIENTE = E.FK_CLIENTE
WHERE ESTADO = 'RJ';

+---------+------+-------------------+-----------+-------------+--------+
| NOME    | SEXO | EMAIL             | NUMERO    | TIPO        | ESTADO |
+---------+------+-------------------+-----------+-------------+--------+
| ANA     | F    | NULL              | 654987321 | COMERCIAL   | RJ     |
| GIOVANA | F    | NULL              | 33567765  | CELULAR     | RJ     |
| GIOVANA | F    | NULL              | 88668786  | CELULAR     | RJ     |
| GIOVANA | F    | NULL              | 55689654  | COMERCIAL   | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | 88687979  | COMERCIAL   | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | 77455786  | RESIDENCIAL | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | 89766554  | RESIDENCIAL | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | 77755785  | RESIDENCIAL | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | 44522578  | COMERCIAL   | RJ     |
+---------+------+-------------------+-----------+-------------+--------+

-- NOME, E-MAIL E TELEFONE CELULAR DAS MULHERES QUE MOREM NO ESTADO DO RIO DE JANEIRO

SELECT C.NOME, C.SEXO, C.EMAIL, T.NUMERO, T.TIPO, E.ESTADO
FROM CLIENTE C
INNER JOIN TELEFONE T
ON C.ID_CLIENTE = T.FK_CLIENTE
INNER JOIN ENDEREÇO E
ON C.ID_CLIENTE = E.FK_CLIENTE
WHERE C.SEXO = 'F' AND E.ESTADO = 'RJ' AND T.TIPO = 'CELULAR';

+---------+------+-------+----------+---------+--------+
| NOME    | SEXO | EMAIL | NUMERO   | TIPO    | ESTADO |
+---------+------+-------+----------+---------+--------+
| GIOVANA | F    | NULL  | 33567765 | CELULAR | RJ     |
| GIOVANA | F    | NULL  | 88668786 | CELULAR | RJ     |
+---------+------+-------+----------+---------+--------+