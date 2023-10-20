Teste de Competência 

No arquivo projeto.zip você encontrará: 
- Arquivos necessários para executar a base do projeto que está compactado  com duas pastas  (teste-desenvolvedor-web) e (htdocs).
- Banco de Dados: está localizado dentro da pasta teste-desenvolvedor-web/Banco de Dados. Você irá encontrar : 
	- Diagrama ER com tabelas e atributos (Poderá ser aberto com MYSQL Workbench) ou similares
	- Sintaxe SQL para importação do banco(sem Dados castrados).
	- Imagem do diagrama ER.
Sobre Projeto:
- O projeto conta com arquitetura MVC e utiliza-se de recurso de Route do COMPOSER seguindo as normas de PSR-4.
- Linguagens utilizadas para criação do projeto foram: PHP, você encontrará nos diretórios lógicos da aplicação (teste-desenvolvedor-web /APP) toda a parte estrutural do sistema, onde deverá ser completada. 
Para auxiliar inicialmente os candidatos, haverá recursos de Routes pronto, estrutura MVC completa. Entretanto não haverá conteúdos nas páginas e deverão ser desenvolvidos pelo candidato para que quando realizado o teste seja possível cadastrar e alterar as informações, haverá uma tela (Listar) já definida. O candidato poderá se basear nela para realizar as demais telas. 
- Será necessário o candidato criar menu de navegador que irá ser usado no teste. Para facilitar as rotas deverão ser continuadas dentro do arquivo teste-desenvolvedor-web /APP/routes.php

COMO EXECUTAR O ARQUIVO:
- Os arquivos devem ser adicionados na pasta raiz do servidor local (XAMPP ou WAMP) dentro do diretório : C:/ xampp/  ,  C: / WAMP ou no servidor que for conveniente ao participante(Deverá informar caso optar por outro servidor)

Objetivo: Cria CRU (Create, Read, Update), das classes Pessoa e Endereços (Recurso de banco de dados está localizado dentro da pasta teste-desenvolvedor/Banco de Dados). 

 ------ NÃO SE ESQUEÇA DE CRIAR ARQUIVOS .htaccess --------------
 CÓDIGO INTERNO DO ARQUIVO 
 
<IfModule mod_rewrite.c>
	RewriteEngine on
	RewriteCond %{REQUEST_FILENAME} !-f
	RewriteCond %{REQUEST_FILENAME} !-d
	RewriteRule ^(.*)$ index.php/$1 [L]
</IfModule>
php_flag log_errors on
php_value error_log /home/usuario_FTP/public_html/error_log.txt

