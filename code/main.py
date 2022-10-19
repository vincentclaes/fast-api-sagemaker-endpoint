from fastapi import FastAPI

import logging
print("before fast api")
logger = logging.getLogger()
app = FastAPI()
print("after fast api")

@app.get('/ping')
async def ping():
    return {"body": "healthy"}


@app.post('/invocations')
async def invocations():
    return {"body": "prediction"}

def compose_visibility():
    pass