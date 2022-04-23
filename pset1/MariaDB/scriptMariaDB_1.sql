-- criar usuário na maquina virtual
CREATE USER 'lucas'@'localhost' IDENTIFIED BY '123';

-- criar database uvv
CREATE DATABASE uvv CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- garante privilegios ao usuario lucas na tabela uvv
GRANT ALL PRIVILEGES ON uvv.* TO 'lucas'@'localhost';

-- seleciona o usuario para ser utilizado
SYSTEM mysql -u lucas -p;





