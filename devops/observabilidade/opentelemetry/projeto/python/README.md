# Opentelemetry e Python

## Objetivo:
Gerar o trace de forma automatizada utilizando OpenTelemetry e Python

- Dependências:
    - Python

## Preparando o Ambiente:

Criar um Virtual Environment

```bash
python3 -m venv instrumentacao-manual

python3 -m venv ./venv && source venv/bin/activate
```

Acessar a pasta /bin

```bash
cd instrumentacao-manual/bin/
```

Executar a instalação do pacote opentelemetry-distro python

```bash
./pip3 install opentelemetry-distro
```

Executar o opentelemetry-bootstrap

```bash
./opentelemetry-bootstrap -a install
```

## Instalar o flask

```bash
./pip3 install flask
```

## Exemplo de Hello World do Python usando flask

Arquivo hello.py

```bash
from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"
```

## Executando

```bash
FLASK_APP=hello.py flask run

 * Serving Flask app 'hello.py'
 * Debug mode: off
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 * Running on http://127.0.0.1:5000
Press CTRL+C to quit
127.0.0.1 - - [11/Jul/2024 14:25:21] "GET / HTTP/1.1" 200 -
```

Ao executar já é possível acessar o seu hello world navegando em "127.0.0.1:5000"


Para instrumentar basta executar o comando opentelemetry-instrument e acessar via browser o endereço 127.0.0.1:81

```bash
./opentelemetry-instrument --traces_exporter console --service_name api-hello ./python3 ./hello.py
```

Parâmetros

--traces_exporter = Seleciona para onde vamos exportar os traces, no nosso caso, via console.

--service_name = Define o nome da aplicação.

Trace via console:

```bash
127.0.0.1 - - [09/Jul/2024 19:05:36] "GET / HTTP/1.1" 200 -
{
    "name": "GET /",
    "context": {
        "trace_id": "0x6b62b2003353aa9247704067bc863d6d",
        "span_id": "0x48f1f2bee6507188",
        "trace_state": "[]"
    },
    "kind": "SpanKind.SERVER",
    "parent_id": null,
    "start_time": "2024-07-09T22:05:36.251660Z",
    "end_time": "2024-07-09T22:05:36.252335Z",
    "status": {
        "status_code": "UNSET"
    },
    "attributes": {
        "http.method": "GET",
        "http.server_name": "0.0.0.0",
        "http.scheme": "http",
        "net.host.name": "127.0.0.1:81",
        "http.host": "127.0.0.1:81",
        "net.host.port": 81,
        "http.target": "/",
        "net.peer.ip": "127.0.0.1",
        "net.peer.port": 59922,
        "http.user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0 (Edition std-1)",
        "http.flavor": "1.1",
        "http.route": "/",
        "http.status_code": 200
    },
    "events": [],
    "links": [],
    "resource": {
        "attributes": {
            "telemetry.sdk.language": "python",
            "telemetry.sdk.name": "opentelemetry",
            "telemetry.sdk.version": "1.25.0",
            "service.name": "api-hello",
            "telemetry.auto.version": "0.46b0"
        },
        "schema_url": ""
    }
}

```

Para sair do Virtual Environment

```bash
deactivate
```