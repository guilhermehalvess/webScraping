from bs4 import BeautifulSoup # Parser html para coletar dados 
from time import sleep #para dar pausas para a pagina carregar
from selenium import webdriver #Navegacao no site
import psycopg2 as db # Conexao com o BD
from decimal import Decimal #Ajustar valor para BD
import datetime # data e hora de criacao para o BD
import re # Ajustar strings


# Banco de dados
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

class Connection(Config):
    def __init__(self):
        Config.__init__(self)
        try:
            self.conn = db.connect(**self.config["postgres"]) # pegar o postgres na Config e ** para desempacotar
            self.cur = self.conn.cursor()
        except Exception as e:
            print('Erro para se conectar ao banco', e)
            exit (1)

    def __enter__(self):
        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        self.commit()
        self.connection.close()
        return self

    @property
    def connection(self):
        return self.conn

    @property
    def cursor(self):
        return self.cur

    def commit(self):
        self.connection.commit()

    def fetchall(self):
        return self.cursor.fetchall()

    def execute(self, sql, params=None):
        self.cursor.execute(sql, params or ())

    def query(self, sql, params=None):
        self.cursor.execute(sql, params or ())
        return self.fetchall()

class ProdutoBanco(Connection):
    def __init__(self):
        Connection.__init__(self)

    def insertall(self, *args):
        # try:
        sql = "INSERT INTO produtos (st_name,in_price_to,st_department,st_category,st_store,st_image,st_available,dt_created_at,dh_hour) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s)"
        print('sql =',sql)
        print('args=',args)
        self.execute(sql, args)
        self.commit()
        sleep(0.1)
        # except Exception as e:
        #     print('Erro ao inserir', e)

# Inicia o banco
produtoBD = ProdutoBanco()

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
sleep(5)

# Escolhendo a loja unica
button_entrar_shopper_unico = navegador.find_elements_by_tag_name('button')[2]
button_entrar_shopper_unico.click()

sleep(1.5)

# Fechando o endereco 
button_fechar_endereco = navegador.find_elements_by_css_selector('svg > path[d="M16.192 6.344L11.949 10.586 7.707 6.344 6.293 7.758 10.535 12 6.293 16.242 7.707 17.656 11.949 13.414 16.192 17.656 17.606 16.242 13.364 12 17.606 7.758z"]')[0]
button_fechar_endereco.click()

sleep(1)

# categoria e subcategorias
base_url = 'https://unica.shopper.com.br/shop/alimentos/'
setores = ['acucar-e-adocantes/','arroz-feijao-e-graos/','cafe-da-manha/','conservas-e-enlatados/','farinhas-e-farofas/','ingredientes-culinarios/','massas-e-molhos-de-tomate/','molhos-diversos/','oleos-e-azeites/','pronto-para-consumo/','queijos-frios-e-embutidos/','sal-pimenta-e-temperos/','vinagre-e-aceto-balsamico/']

# No final ira mostrar a quantidade de produtos coletados
quantidade_produtos = 0

# Passar por todos os setores
# Descer ate o final da pagina
# Coletar os dados 
# Adicionar no banco Postgres
for setor in setores:
    # Entrando no novo setor
    navegador.get('https://unica.shopper.com.br/shop/alimentos/' + setor)
    sleep(2)

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

    sleep(0.5)

    # elemento que contem os produtos
    elemento = navegador.find_element_by_xpath("//div[@style='position: relative;']/div")
    
    #conteudo da pagina
    html_content=elemento.get_attribute('outerHTML')
    #print(html_content)

    site = BeautifulSoup(html_content, 'html.parser')
    #print(site.prettify())

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

            produtoBD.insertall(descricao.text,valor_decimal,'Alimentos',setor_tratado,'Shopper',imagem['src'],'S',data,hora)

print('Total produtos:',quantidade_produtos)

sleep(5)
