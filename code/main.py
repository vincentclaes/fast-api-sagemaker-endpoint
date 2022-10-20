from fastapi import FastAPI
import uvicorn

app = FastAPI()

@app.get('/ping')
async def ping():
    return {"body": "healthy"}


@app.post('/invocations')
async def invocations():
    return {"body": "prediction"}
