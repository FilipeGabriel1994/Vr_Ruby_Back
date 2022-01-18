# Automação de testes Automação de testes para o processo seletivo da VR Benefícios com Cucumber + Ruby + HTTParty para teste de backend


# Sobre o projeto

https://portal.vr.com.br/api-web/comum/enumerations/VRPAT

Automação de testes da VR Benefícios em backend utilizamos a tecnológica Cucumber + Ruby + HTTParty. A aplicação consiste em automatizar testes utliziando Ruby + HTTParty e Cucumber como ferramenta para permitir automazição do teste em BDD(Behaviour-Driven Development) , onde vazemos validação da Api e bucamos o objeto “typeOfEstablishment” e trazemos um desses objetos:

Backend:

Crie um cenário, utilizando Cucumber + Ruby + HTTParty, que valide que o JSON retornado
pelo serviço possui a chave “typeOfEstablishment” e print, aleatoriamente, um desses tipos
de estabelecimentos.

## Layout Api

![image](https://user-images.githubusercontent.com/83319090/149798350-3ff8e7d1-ae6e-4a4e-8a7f-6809d4914ceb.png)



# Tecnologias utilizadas

## Automação Front End
- Ruby/Cucumber/HTTParty
- HTML / CSS 
- Allure Report


# Arquitetura do projeto


### Configurando sua máquina


### Necessário instalar:

- Ruby for Windows: linguagem de programação utilizada nos testes.
- Cmder for Windows: Sistema que trás as funcionalidades bash (Terminal) para o Windows.

Configurando o ambiente de automação de testes Web
Para que sua automação possa ser realizada é necessário instalar alguns recursos, conforme será descrito abaixo:

#### Windows
#### 1. Instalando o Console do Cmder
- Baixe em: https://github.com/cmderdev/cmder/releases/download/v1.3.2/cmder.zip .
- Descompactar na pasta C:\Cmder.
- Selecione o cmder.exe e arrastar até sua barra de ferramentas do Windows para criar um atalho.
- Executar o cmder.exe.
#### 2. Instalando o Ruby para Windows de acordo com a versão do seu sistema operacional e arquitetura x86 (32bits) ou x64 (64bits)
- Baixe em: http://rubyinstaller.org/downloads/.
- Executar o arquivo baixado e seguir as instruções clicando em ‘next’.
- Selecionar os 3 checkbox exibidos e continuar a dar ‘next’ até o ‘finish’.
- No Console do Cmder, digite o comando ruby –v , se a instalação estiver correta aparecerá a versão instalada.
#### 3. Instalando Devkit
- Baixe em (x86): https://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-32-4.7.2-20130224-1151-sfx.exe.
- Baixe em (x64): http://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe.
- Acesse o diretório C:\Ruby23-x64.
- Crie uma pasta chamada devkit e coloque o arquivo baixado dentro dessa pasta.
- Clique duas vezes no arquivo para que ele descompate os arquivos na pasta que foi criada.
- No Console do Cmder, digite os comandos:
```bash
cd/
cd C:\Ruby23-x64\devkit
ruby dk.rb init
ruby dk.rb install
```

#### 4. Alterando os sources do rubygems
O Rubygems precisa de uma atualização de certificado de sergurança para permitir utilizar com https, e para não precisar atualizar isso, passamos a utilizar então o repositório de gems em http, fazendo o seguinte:

- No Console do Cmder, digite o comando:
```bash
gem sources -a http://rubygems.org/
gem sources -r https://rubygems.org/
```
#### 5. Instalando o bundler
- No Console do Cmder, digite o comando:
```bash
gem install bundler
``` 
#### 6. Instalando o chromedriver, IEdriver e Geckodriver
Baixe o chromedriver em: https://sites.google.com/a/chromium.org/chromedriver/downloads .

- Descompacte o arquivo dentro da pasta C:\Ruby23-x64\bin.
Faça o mesmo para o IEdriver e o Geckodriver.

#### 7. Para relatórios em Allure Report
Allure é uma estrutura de código aberto projetada para criar relatórios de execução de teste que são claros para todos na equipe.

- Usando o scoop,um command-line installer for Windows, vamos abrir Windows Powershell como administrador e digitar os seguintes comandos: 

```bash
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
```
teclar enter e escolher a opção [a] Sim para todos

Em seguida digitar:

```bash
iwr -useb get.scoop.sh | iex
```
Tecla Enter e em seguida:

```bash
scoop isntall allure
```
após a instalação fechar o powershell e também o terminal.

- Instalação do JDK 8
Acessar a pagina abaixo para baixar e instlar o JDK 8
https://www.oracle.com/br/java/technologies/javase/javase8-archive-downloads.html#license-lightbox

#

## Agora o ambiente está configurado, podemos rodar os testes.
#
### Como Executar os testes automatizados
Para executar o testes automatizados usaremos alguns comandos a partir da pasta raiz do nosso projeto.

```bash
bundle install
```

- Para execução de todos os cenários implementados com o navegador chrome padrão utilizamos o seguinte código:
```bash
cucumber
```
Este código executará o teste completo.

o resultado será:
![image](https://user-images.githubusercontent.com/83319090/149799171-2c80c745-c23b-4c45-93f0-5fe1a8f80205.png)


- Para acessar o Report em HTML é só abrir o aquiervo report.html seguindo o caminho abaixo: C:\vr_ruby_back\api\reports\features_report.html.

### O resultado do Report em HTML
![image](https://user-images.githubusercontent.com/83319090/149799997-10fdc888-fc2e-4e47-8ff1-b09847f0f3ce.png)
