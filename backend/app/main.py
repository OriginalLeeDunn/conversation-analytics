from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()

class Conversation(BaseModel):
    text: str
    metadata: dict

@app.post("/analyze")
async def analyze(conv: Conversation):
    return {"analysis": f"Hello, '{conv.text}' received!"}