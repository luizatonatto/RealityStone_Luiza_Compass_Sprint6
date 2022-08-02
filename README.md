# CHALLENGE 6
<div id="top"></div>

## 💡 Sobre o projeto
Repositório da Sprint 6 Tech da trilha RealityStone - Compass

Esse repositório contém arquivos desenvolvidos ao longo de duas semanas [20/07/22 - 02/08/22], durante o processo de apredizagem e a realização da Sprint Final 6. Portanto, está presente nele: 

* Plano de Teste do site [Automation Practice](http://automationpractice.com/) 🗸

* O arquivo Automation Practice com os Gherkins e Ruby 🗸

* O Mapa Mental prioritário do site Automation Practice 🗸

* Vídeos com a automação completa executada por sessôes 🗸

* Arquivo de conteúdo do Report -prd -html 🗸

* Relatório de Execução 🗸


## 👀 Pré - Requisitos

Frameworks e Bibliotecas necessárias durante o processo:

* [Canva](https://www.canva.com/)
* [VsCode](https://code.visualstudio.com/)
* [Ruby25x64](https://rubyinstaller.org/downloads/)
* [CMDER](https://cmder.net/)
* [GitHub](https://github.com/)
* [Gherkins](https://automationpanda.com/2017/01/26/bdd-101-the-gherkin-language/)
* [Cucumber](https://github.com/cucumber/cucumber-ruby)
* [Capybara](https://github.com/teamcapybara/capybara)
* [SitePrism](https://github.com/site-prism/site_prism)
* [Selenium WebDriver](https://github.com/SeleniumHQ/selenium)
* [Chromedriver](https://chromedriver.chromium.org/downloads)

* Gems:
 ```sh
> require 'cucumber'
> require 'capybara'
> require 'capybara/cucumber'
> require 'site_prism'
> require 'selenium-webdriver'
> require 'rspec'
> require 'pry'
> require 'faker'
> require 'i18n'
```


## 💻 Instalação 

1. Instale o CMDER 


2. Execute os seguintes comandos para instalar as gems e criar o arquivo GemFile:
   ```sh
   bundle install
   ```
   
3. Depois execute esse comando para verificar se as gem's foram instaladas com sucesso:

   ```js
   gem list bundler ruby-debug-ide
   ```
   
 4. No VsCode, baixe as extensões (após baixadas reinicie o programa):
   
    > Ruby
    > 
    > Snippets and Syntax Highlight for Gherkin (Cucumber)
    > 
    > Gherkin Indent
    > 
    > EditorConfig
    > 
    > Ruby Solargraph
    > 
    > Material Icon Theme


* Após isso, você poderá criar seus Gherkins do modo que achar melhor.


## Conteúdo Gherkins 📁

* Validação de Cadastro

* Validação de Login

* Validação de Search

* Validação de Página do Produto

* Validção de Payment


## Conteúdo Plano de Teste 📑

⭐ Tem o intuito de verificar a usabilidade do site E- commerce “Automation Practice” na visão dos usuários, verificando possíveis issues que venham a atrapalhar os clientes na visualização e navegação pelo varejo ou qualquer empecilhos que os impeçam de finalizar compras. 

 * OBJETIVOS                       
 * ESCOPO                         
 * MAPA MENTAL                       
 * BDD's                             
 * SUÍTE DE CASOS DE TESTE           
 * ESTRATÉGIA DE TESTE
 * PRIORIDADES
 * TESTES CANDIDATOS A AUTOMAÇÃO
 * EQUIPE DE TESTES
 * OBSERVAÇÕES COMPLEMENTARES

## Conteúdo Relatório de Execução 📗

* ANÁLISE DE RESULTADOS da automação rodada em cima da usabilidade do site E- commerce “Automation Practice” na visão dos usuários;
* COBERTURA DE TESTES 
* BUGS: Issues que atrapalharam o fluxo da automação;
* Report

## Comandos

* Para executar os Gherkins individuais da automação:

   ```sh
  cucumber -p default -t@tag_do_arquivo_feature
   ```
  
* Para gerar reports (colocar na pasta Gemfile):

   ```sh
  default: -p prd -p html 
  ```

   ```sh
  html: --format html --out=reports/report.html
   ```
  
* Depois rode todos os Gherkins juntos:

   ```sh
  cucumber -p default -t@regression
   ```

### Contribuidores

* 🧭[Compass](https://compass.uol/) 
* Tech da trilha RealityStone - Projeto Final
* Colegas: Matheus Maschio, Mateus Miri, Daniel!


### Agradecimentos 💗

* Gostaria de agradecer aos meus colegas pela ajuda diária e retirada de dúvidas no Discord;

* A mim mesma pelo esforço e comprometimento com o aprendizado de automação e a finalização do estágio na Compass.

### Autor

#### 📍 Luiza Tonatto


#### Contato

🔗 GitHub - https://github.com/luizatonatto]

🔗 LinkedIn - https://www.linkedin.com/in/luiza-basso-tonatto-b9636a236
