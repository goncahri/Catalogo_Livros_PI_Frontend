# 📚 Catálogo de Livros – Frontend (PI).

Interface web desenvolvida para o **Projeto Integrador (PI)** da FATEC, responsável pela interação do usuário com a API REST do projeto, permitindo autenticação, cadastro e gerenciamento de livros.

Aplicando conceitos modernos de:

- Desenvolvimento Frontend
- Integração Contínua (CI)
- Entrega Contínua (CD)
- DevOps
- Observabilidade
- Qualidade de Código

---

# 🌐 Aplicação online

## Produção (PROD)
https://catalogo-livros-pi-frontend-prod-docker.onrender.com/usuario.html

## Homologação (HML)
https://catalogo-livros-pi-frontend-hml.onrender.com/usuario.html

---

# 🚀 Tecnologias Utilizadas

## Frontend

- HTML5
- CSS3
- JavaScript Vanilla
- Bootstrap
- JWT Authentication

## DevOps / CI-CD

- GitHub Actions
- GitFlow
- Semantic Release
- Docker
- Docker Hub
- Render

## Observabilidade / Qualidade

- Better Stack
- SonarCloud

---

# 📂 Estrutura do Projeto

```bash
.
├── .github/
│   └── workflows/
│       └── ci.yml
│
├── docs/
│
├── images/
│
├── js/
│   ├── login.js
│   └── usuario.js
│
├── .dockerignore
├── .gitignore
├── .releaserc.json
├── CHANGELOG.md
├── comandos-docker-frontend.txt
├── Dockerfile
├── index.html
├── login.html
├── usuario.html
├── package.json
├── package-lock.json
├── README.md
└── sonar-project.properties
```

---

# 🔐 Funcionalidades

## Usuários

- Cadastro
- Login
- Logout
- Persistência do token JWT

## Livros

- Cadastro
- Listagem
- Consulta
- Atualização
- Exclusão

## Segurança

Comunicação protegida com:

```http
Authorization: Bearer TOKEN
```

---

# 🌐 Ambientes Publicados

## 🧪 Homologação (HML)

URL:

```bash
https://catalogo-livros-pi-frontend-hml.onrender.com/usuario.html
```

Origem:

```bash
develop
```

Tags Docker:

```bash
hml
develop
```

---

## 🚀 Produção (PROD)

URL:

```bash
https://catalogo-livros-pi-frontend-prod-docker.onrender.com/usuario.html
```

Origem:

```bash
main
```

Tags Docker:

```bash
latest
vX.X.X
```

---

# 🌳 GitFlow

Estratégia utilizada:

```bash
main
develop
feature/*
```

Fluxo:

```bash
feature → develop → main
```

Todo merge realizado através de:

- Pull Requests
- Code Review
- Pipelines automatizadas

---

# 📝 Padronização de Commits

Este projeto utiliza **Conventional Commits** para manter o histórico organizado e permitir versionamento automático.

## Estrutura

```bash
tipo(escopo): descrição
```

Exemplo:

```bash
feat(front): adiciona tela de login
```

---

## Tipos Utilizados

| Tipo | Descrição | Gera versão? |
|------|-----------|--------------|
| feat | Nova funcionalidade | ✅ |
| fix | Correção | ✅ |
| feat! | Breaking Change | ✅ |
| docs | Documentação | ❌ |
| style | Estilo | ❌ |
| refactor | Refatoração | ❌ |
| test | Testes | ❌ |
| chore | Configuração | ❌ |
| ci | Pipeline | ❌ |
| build | Docker / Build | ❌ |

---

## Exemplos Utilizados

### Frontend

```bash
feat(front): adiciona tela de cadastro
```

```bash
fix(auth): corrige persistência do token
```

### CI/CD

```bash
ci(front): integra sonarcloud
```

```bash
ci(front): adiciona alertas por email
```

### Observabilidade

```bash
feat(observability): integra better stack
```

---

# 🔖 Versionamento Automático

Utilizando:

```bash
semantic-release
```

Fluxo:

```bash
feat → minor
fix → patch
feat! → major
```

Exemplo:

```bash
1.0.0 → 1.1.0 → 1.1.1 → 2.0.0
```

---

# ⚙️ Pipeline CI/CD

Pipeline implementada com:

```bash
.github/workflows/ci.yml
```

---

# A pipeline executa automaticamente

## Em qualquer push

✅ Checkout  
✅ Instala dependências  
✅ Validação dos arquivos HTML  
✅ Build informativo  
✅ SonarCloud Scan  

---

## Na branch develop

✅ Build Docker HML  
✅ Push Docker Hub  
✅ Deploy automático Render HML  

---

## Na branch main

✅ Semantic Release  
✅ Versionamento automático  
✅ Build Docker versionado  
✅ Push Docker Hub  
✅ Deploy automático Render PROD  

---

## Em caso de falha

✅ Envio automático de e-mail

---

# 🐳 Docker

## Build local

```bash
docker build -t catalogo-livros-frontend .
```

## Executar localmente

```bash
docker run -p 80:80 catalogo-livros-frontend
```

---

# 🐳 Docker Hub

Repositório:

```bash
https://hub.docker.com/r/goncahri/catalogo-livros-frontend
```

Tags publicadas automaticamente:

- hml
- develop
- latest
- versionadas

Exemplo:

```bash
1.0.0
1.1.0
1.2.1
```

---

# 📊 Observabilidade – Better Stack

O projeto está integrado ao **Better Stack**.

## Monitoramentos implementados

✅ Frontend PROD  
✅ Uptime  
✅ Disponibilidade  
✅ Tempo de resposta  
✅ Alertas automáticos  

Verificações:

- A cada 3 minutos
- Alertas por e-mail

---

# 🔎 SonarCloud

Análise contínua de qualidade:

https://sonarcloud.io/project/overview?id=goncahri_Catalogo_Livros_PI_Frontend

Monitorado:

- Bugs
- Vulnerabilidades
- Code Smells
- Maintainability

Executado automaticamente em:

- Push
- Pull Requests

---

# 📧 Alertas de Pipeline

A pipeline envia alertas automáticos por e-mail em caso de falha.

Implementado com:

- Gmail SMTP
- GitHub Secrets
- GitHub Actions

Informações enviadas:

- Branch
- Commit
- Autor
- Repositório
- Link da execução

---

# 🔐 Variáveis utilizadas no GitHub Secrets

```env
DOCKERHUB_USERNAME=
DOCKERHUB_TOKEN=

RENDER_HML_DEPLOY_HOOK=
RENDER_PROD_DEPLOY_HOOK=

GH_TOKEN=

EMAIL_USERNAME=
EMAIL_PASSWORD=
EMAIL_TO=

SONAR_TOKEN=
```

---

# ▶️ Instalação Local

## Clonar

```bash
git clone https://github.com/goncahri/Catalogo_Livros_PI_Frontend.git
```

---

## Instalar dependências

```bash
npm install
```

---

## Executar localmente

Abrir:

```bash
index.html
```

ou utilizar:

```bash
Live Server
```

---

# 👨‍💻 Equipe

## Grupo Wi (World Innovation)

- Herivelton Henrique Gonçalves

GitHub:

```bash
https://github.com/goncahri
```

---

# 📌 Status Atual do Frontend

✅ Interface HTML/CSS/JS  
✅ Integração com API  
✅ JWT  
✅ GitFlow  
✅ GitHub Actions  
✅ Semantic Release  
✅ Docker  
✅ Docker Hub  
✅ Render HML  
✅ Render PROD  
✅ Deploy automático  
✅ Better Stack  
✅ SonarCloud  
✅ Alertas por e-mail  

---