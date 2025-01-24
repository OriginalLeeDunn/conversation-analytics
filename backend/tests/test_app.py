from fastapi.testclient import TestClient
from app.main import app

client = TestClient(app)

def test_analyze_conversation():
    response = client.post("/analyze", json={"text": "Hello", "metadata": {}})
    assert response.status_code == 200
    assert "analysis" in response.json()