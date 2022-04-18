## Web Scraping
### Web Scraping com Python (Selenium + Beautifulsoup) | BD Postgres | Fast API

#### 1. Introdução Projeto

Criar um web scraping para extrair dados na Shopper, no setor de alimentos (categorias e subcategorias).

URL base: https://unica.shopper.com.br/shop/#bemvindo

Salvar os dados no banco de dados Postgres (com exportação para csv). 

FastAPI para consultar os dados do Postgres (com busca por ID).

#### 2. Tecnologias Utilizadas

* Python 3.10.4
* PostgreSQL 14.2
* PGAdmin 4 v 6.7

##### 2.1 Import's do Python

###### 2.1.1 main.py
from fastapi import FastAPI

import databases, sqlalchemy

from datetime import date, time, datetime

import uvicorn

from pydantic import BaseModel, Field

from typing import List

###### 2.1.2 webscraping.py
from bs4 import BeautifulSoup 

from time import sleep 

from selenium import webdriver 

import psycopg2 as db

from decimal import Decimal 

import datetime 

import re 

#### 3 Arquivos no diretório

* Backup Postgres - backup do banco (DBwebscraping.sql) com todos os produtos. Para acessar clique [aqui](https://github.com/guilhermehalvess/webScraping/tree/master/Backup%20Postgres)
* Exportação assortment - arquivo csv com os produtos. Para acessar clique [aqui] (https://github.com/guilhermehalvess/webScraping/tree/master/Exporta%C3%A7%C3%A3o%20assortment)
* FastAPI - Imagens dos GET's a partir da página local 127.0.0.1:5000/docs
* chromeDriver - Driver para o selenium controlar o Chrome
* main.py - código Python para o FastAPI (e sua conexão com o banco)
* webscraping.py - código para o selenium + BeautifulSoup realizar a busca no site, e conexão com o postgres.

#### 4. Projeto

###### 4.1 webscraping.py

Nesse arquivo temos o BeautifulSoup + selenium para realizar a busca no site e o psycopg2 para a conexão no banco para realizar o insert. 

###### 4.1.1 Postgres

* Dados para conexão do banco no dicionário em uma classe para configuração
~~~ python
class Config:
    def __init__(self):
        #O ideal seria um arquivo externo
        self.config = {
            "postgres": {
                "user": "postgres",
                "password": "guilherme115",
                "host": "127.0.0.1",
                "port": "5432",
                "database": "webscraping"
            }
        } 
~~~

* Definição do insert que será utilizado
~~~ python
class ProdutoBanco(Connection):
    def __init__(self):
        Connection.__init__(self)

    def insertall(self, *args):
        sql = "INSERT INTO produtos (st_name,in_price_to,st_department,st_category,st_store,st_image,st_available,dt_created_at,dh_hour) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s)"
        print('sql =',sql)
        print('args=',args)
        self.execute(sql, args)
        self.commit()
        sleep(0.1)
~~~ 

###### 4.1.2 Selenium

* Com o selenium foi utilizado o webdriver.Chrome(), para que ele possa utilizar o Chrome de forma automatizada (no repositório tem o chromedriver.exe, ao testar o código se for em um Windows precisa deixar na mesma pasta). 
* O primeiro desafio é passar pela página de login, então foi necessário localizar elementos na página para chegar até o login para preencher com o e-mail, senha e realizar o login. 
~~~ python
navegador = webdriver.Chrome()
navegador.get('https://landing.shopper.com.br/')

# Dados de conta Shopper
email = 'guilherme.130920@gmail.com'
senha = 'guilherme115'

sleep(2)

# Entrando na area de login
button_link = navegador.find_element_by_link_text('Entre aqui')
button_link.click()

sleep(1.5)

# Inserindo os dados de login
input_email = navegador.find_element_by_name('email')
input_email.send_keys(email)
sleep(0.3)
input_senha = navegador.find_element_by_name('senha')
input_senha.send_keys(senha)
sleep(0.2)
input_senha.submit()
~~~ 
* O próximo desafio é escolher a loja única e fechar a tela de endereço que abre.
~~~ python
# Escolhendo a loja unica
button_entrar_shopper_unico = navegador.find_elements_by_tag_name('button')[2]
button_entrar_shopper_unico.click()

sleep(1.5)

# Fechando o endereco 
button_fechar_endereco = navegador.find_elements_by_css_selector('svg > path[d="M16.192 6.344L11.949 10.586 7.707 6.344 6.293 7.758 10.535 12 6.293 16.242 7.707 17.656 11.949 13.414 16.192 17.656 17.606 16.242 13.364 12 17.606 7.758z"]')[0]
button_fechar_endereco.click()
~~~
* Agora logado tenho acesso a nossa URL base. Então, com uma lista dos setores passo em todos coletando os produtos. 
* Como a página é dinâmica, não mostram todos os produtos de uma vez, é necessário ir rolando até chegar no final da página.
~~~ python
# Descer o scroll para pegar todos os itens
ultimo_tamanho = navegador.execute_script("return document.body.scrollHeight")
while True:
    # Descendo ate o final da pagina
    navegador.execute_script("window.scrollTo(0, document.body.scrollHeight);")
    sleep(0.5)

    # Coletando o novo tamanho de pagina e verificando se foi atualizado
    novo_tamanho = navegador.execute_script("return document.body.scrollHeight")
    if novo_tamanho == ultimo_tamanho:
        break
    ultimo_tamanho = novo_tamanho
~~~ 
* Ao descer, temos todos os produtos no HTML da página, já podemos buscar a div que tem todos os produtos e passar para o BeautifulSoup realizar a coleta dos dados.

~~~ python
# elemento que contem os produtos
elemento = navegador.find_element_by_xpath("//div[@style='position: relative;']/div")

#conteudo da pagina
html_content=elemento.get_attribute('outerHTML')
~~~

###### 4.1.3 BeautifulSoup

* A cada setor o selenium irá rolar e passar o HTML completo. Temos que realizar o parser do HTML e coletar de cada produto o valor, link da imagem e descrição. Criando as variáveis de data e hora e realizando os ajustes necessários nas variáves para salvar no Postgres.

~~~ python          
 produtos = (site.find('div')) 
    for produto in produtos:
        valor = (produto.find('p', attrs={'class': 'priceP'}))
        if (valor):
            quantidade_produtos = quantidade_produtos + 1
            print('R$:', valor.text)
            # ajuste para salvar no BD
            valor_decimal = valor.text
            valor_decimal = valor_decimal.replace(',','.')
            valor_decimal = Decimal(valor_decimal)
        
            imagem = (produto.find('img'))
            print('Imagem do produto:', imagem['src'])
           
            descricao = (produto.find('p'))
            print('descrição do produto:', descricao.text)
            
            sleep(0.3)
            data = datetime.date.today()
            print (data)

            hora = datetime.datetime.now()
            hora = hora.strftime ("%H:%M:%S")
            print(hora)

            setor_tratado = setor
            setor_tratado = setor_tratado.replace('-', ' ')
            setor_tratado = re.sub('[^0-9 A-Za-z]', '', setor_tratado)
~~~     
  
* Com todos os dados, é só fazer o insert no Postgres no final desse for.

~~~ python 
produtoBD.insertall(descricao.text,valor_decimal,'Alimentos',setor_tratado,'Shopper',imagem['src'],'S',data,hora)
~~~ 

###### 4.2 main.py

Nesse arquivo temos o FastAPI e sua conexão com o banco para buscar os dados.

* Temos a estrutura do banco de dados com o sqlalchemy
~~~ python
produtos = sqlalchemy.Table(
    "produtos",
    metadata,
    sqlalchemy.Column("in_codigo"     , sqlalchemy.String, primary_key=True),
    sqlalchemy.Column("st_name"       , sqlalchemy.String),
    sqlalchemy.Column("st_sku"        , sqlalchemy.String),
    sqlalchemy.Column("in_price_to"   , sqlalchemy.String),
    sqlalchemy.Column("st_discount"   , sqlalchemy.String),
    sqlalchemy.Column("st_department" , sqlalchemy.String),
    sqlalchemy.Column("st_category"   , sqlalchemy.String),
    sqlalchemy.Column("st_store"      , sqlalchemy.String),
    sqlalchemy.Column("st_image"      , sqlalchemy.String),
    sqlalchemy.Column("st_url"        , sqlalchemy.String),
    sqlalchemy.Column("st_available"  , sqlalchemy.String),
    sqlalchemy.Column("in_stock_qty"  , sqlalchemy.String),
    sqlalchemy.Column("dt_created_at" , sqlalchemy.Date),
    sqlalchemy.Column("dh_hour"       , sqlalchemy.Time),
)
~~~

* Temos a lista de elementos que irá mostrar no FastAPI ao buscar os dados
~~~ python
class produtoListar(BaseModel):
    in_codigo      : int
    st_name        : str
    st_sku         : str = None
    in_price_to    : str
    st_discount    : str = None
    st_department  : str 
    st_category    : str
    st_store       : str
    st_image       : str
    st_url         : str = None
    st_available   : str
    in_stock_qty   : str = None
    dt_created_at  : date
    dh_hour        : time
~~~

* FastAPI tem duas buscas, um GET que retorna todos os produtos, e um GET onde pode informar o ID do produto.
~~~ python
@app.get("/produto", response_model=List[produtoListar])
async def buscar_produtos():
    query = produtos.select()
    return await database.fetch_all(query)

@app.get("/produto/{produtoId}", response_model=produtoListar)
async def busca_produto_id(produtoId: int):
    query = produtos.select().where(produtos.c.in_codigo == produtoId)
    return await database.fetch_one(query)
~~~ 

* Imagem da execução do GET com retorno de todos os produtos.
![FastAPI GET todos os produtos](https://github.com/guilhermehalvess/webScraping/blob/master/FastAPI/FastAPI_Todos_Produtos.PNG)

* Imagem da execução do GET com retorno de acordo com o ID.
![FastAPI GET filtrando por ID](https://github.com/guilhermehalvess/webScraping/blob/master/FastAPI/FastAPI_Busca_Por_ID.PNG)


