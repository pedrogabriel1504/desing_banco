USE bdex3_redesocial;
-- 1. Exibir todas as informações da tabela `USUARIOS`.
SELECT * FROM USUARIOS;

-- 2. Mostrar os nomes, sobrenomes e e-mails de todos os usuários.
SELECT NOME_USUARIO AS NOME, SOBRENOME, EMAIL FROM usuarios;
-- 3. Listar os nomes e descrições de todos os grupos.
SELECT 
NOME_GRUPO AS Nome, DESCRICAO AS Descrição FROM grupos;
-- 4. Exibir os detalhes das postagens: ID da postagem, texto, data e hora, e o nome do usuário que postou.
SELECT 
    ID_POST, TEXTO, DATA_HORA, USUARIO
FROM
    postagens;
-- 5. Listar o nome dos usuários e a quantidade de postagens que cada um fez.
SELECT NOME_USUARIO, COUNT(ID_POST) AS quantiade_de_postagens
FROM usuarios u
LEFT JOIN postagens p ON p.USUARIO = u.ID_USUARIO
GROUP BY ID_USUARIO, NOME_USUARIO;
-- 6. Mostrar os nomes dos usuários que fizeram comentários em 2024.
SELECT DISTINCT
    NOME_USUARIO
FROM
    usuarios u
        INNER JOIN
    comentarios c ON u.ID_USUARIO = c.ID_COMENTARIO
WHERE
    YEAR(c.DATAHORA) = 2024;
-- 7. Listar todos os grupos, ordenados pelo nome do grupo de A a Z.
SELECT * 
FROM grupos
ORDER BY NOME_GRUPO ASC;
--









