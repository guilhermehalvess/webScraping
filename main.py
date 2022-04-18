from fastapi import FastAPI
import databases, sqlalchemy
from datetime import date, time, datetime
import uvicorn
#import modeloBase as mdBase
from pydantic import BaseModel, Field
from typing import List


app = FastAPI()

### Postgres

DATABASE_URL = "postgresql://postgres:guilherme115@127.0.0.1:5432/webscraping"
database = databases.Database(DATABASE_URL)
metadata = sqlalchemy.MetaData()

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

engine = sqlalchemy.create_engine(
    DATABASE_URL
)

metadata.create_all(engine)

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

class ProdutoAdicionar(BaseModel):
    st_name        : str  = Field(..., example="MISTURA PARA BOLO STEVITA DE BAUNILHA 300G")
    in_price_to    : str  = Field(..., example="11.48")
    st_department  : str  = Field(..., example="Alimentos")
    st_category    : str  = Field(..., example="cafe da manha")
    st_store       : str  = Field(..., example="Shopper")
    st_image       : str  = Field(..., example="https://d2om08pcbtz1n1.cloudfront.net/misturabaunilhastevita5877.jpg")
    st_available   : str  = Field(..., example="S")

@app.on_event("startup")
async def startup():
    await database.connect()

@app.on_event("shutdown")
async def shutdown():
    await database.disconnect()

@app.get("/produto", response_model=List[produtoListar])
async def buscar_produtos():
    query = produtos.select()
    return await database.fetch_all(query)

@app.get("/produto/{produtoId}", response_model=produtoListar)
async def busca_produto_id(produtoId: int):
    query = produtos.select().where(produtos.c.in_codigo == produtoId)
    return await database.fetch_one(query)

# @app.post("/produto", response_model=produtoListar)
# async def adicionar_produto(user: ProdutoAdicionar):
#     gDate =str(datetime.datetime.now())
#     query = produtos.insert().values(
#         name            = user.name,
#         valor           = user.valor,
#         departamento    = user.departamento,
#         categoria       = user.categoria,
#         loja            = user.loja,
#         imagem          = user.imagem,
#         disponivel      = user.disponivel,
#         criado          = gDate,
#         hora            = gDate,
#     ) 

#     await database.execute(query)
#     return {
#         **user.dict(),
#         "create_at":gDate,
#         "sucesso": "1"
#     }

if __name__ == "__main__":
    uvicorn.run("main:app", host="127.0.0.1", port=5000, log_level="info")