# 📚 Catálogo de Livros – Frontend

Este repositório contém o **frontend do projeto Catálogo de Livros**, desenvolvido com **HTML, CSS (Bootstrap) e JavaScript**, consumindo uma API REST construída em **Node.js + Express + MongoDB**.

O projeto segue práticas profissionais de desenvolvimento, incluindo:

- separação entre frontend e backend
- GitFlow
- CI/CD com GitHub Actions
- versionamento semântico automático
- releases automáticas com semantic-release

---

## 🧩 Arquitetura do Projeto

O sistema foi dividido em dois repositórios:

- 🔙 Backend: API REST (Node.js + MongoDB)
- 🎨 Frontend: Interface Web (HTML, CSS, JS)

Essa separação permite:

- escalabilidade
- deploy independente
- organização profissional
- integração com CI/CD

---

## 🚀 Funcionalidades do Frontend

- 📖 Cadastro de livros
- 🔍 Filtros por:
  - título
  - autor
  - ano da leitura
  - avaliação mínima e máxima
- 📊 Estatísticas:
  - total de livros
  - ano com mais leituras
  - média de avaliações
  - melhor avaliado
- ⭐ Destaques do mês
- 🔄 Paginação e ordenação
- 🌐 Integração com Google Books API via backend
- 🔐 Login e autenticação com JWT

---

## 🔗 Integração com o Backend

### Produção
https://catalogo-livros-pi-backend.onrender.com/api

### Ambiente local
http://localhost:3000/api

### Lógica de alternância automática

```js
const isLocal =
  window.location.hostname === "localhost" ||
  window.location.hostname === "127.0.0.1";

const baseURL = isLocal
  ? "http://localhost:3000/api"
  : "https://catalogo-livros-pi-backend.onrender.com/api";
```

---

## 🔀 GitFlow

- main → produção  
- develop → desenvolvimento  
- feature/* → novas funcionalidades  

Fluxo:

feature → develop → main

---

## ⚙️ CI/CD no Frontend

Arquivo:

.github/workflows/ci.yml

### Pipeline executa:

- checkout do código
- configuração do Node.js
- instalação de dependências
- validação do frontend
- execução do semantic-release na main

---

## 🚀 Versionamento Automático

Utilizamos semantic-release para:

- gerar versão automaticamente
- criar tag (v1.0.0)
- criar release no GitHub
- atualizar CHANGELOG

---

## 🔢 Padrão de Commits

feat: nova funcionalidade  
fix: correção de bug  
chore: manutenção  
ci: pipeline  
docs: documentação  

---

## 🔁 Fluxo de Branches e Releases

1. Criar feature:
git checkout develop  
git pull origin develop  
git checkout -b feature/nome-da-feature  

2. Commit:
git add .  
git commit -m "feat: descrição"  
git push origin feature/nome-da-feature  

3. PR:
feature → develop  

4. Release:
develop → main  

5. Automático:
- CI roda
- semantic-release gera versão
- tag criada
- release criada
- changelog atualizado

---

## 📦 Estrutura do Projeto

frontend/
├── .github/
│   └── workflows/
│       └── ci.yml
├── docs/
├── images/
├── js/
├── index.html
├── login.html
├── usuario.html
├── .gitignore
├── .releaserc.json
├── CHANGELOG.md
├── package.json

---

## 📊 Status Atual

- CI/CD funcionando  
- Versionamento automático  
- Release v1.0.0 criada  
- Integração com backend completa  

---

## 🚀 Atualizações Futuras

- Deploy automático (CD completo)
- Docker
- Testes no frontend
- Responsividade avançada
- Performance
- Segurança
- Monitoramento

---

## 👨‍💻 Autor

Herivelton Henrique
