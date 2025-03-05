# 🐳 Projeto Docker Cluster

Bem-vindo ao **Projeto Docker Cluster**, um ambiente automatizado para criar e gerenciar um cluster completo utilizando **Vagrant, VirtualBox, Docker e Swarm**.

## 🚀 Sobre o Projeto
Este projeto utiliza **Shell Script** para provisionar máquinas Linux no **VirtualBox** via **Vagrant**, instalando automaticamente o **Docker** e configurando um **cluster Swarm** pronto para deploy de aplicações distribuídas.

### 🔹 **Principais Recursos**
- Provisionamento automatizado de máquinas virtuais com **Vagrant**
- Instalação automática do **Docker**
- Configuração do **Docker Swarm** para orquestração de containers
- Ambiente de cluster escalável e pronto para uso

## 🛠 Tecnologias Utilizadas
- **Shell Script** – Automação da instalação e configuração
- **Vagrant** – Gerenciamento de máquinas virtuais
- **VirtualBox** – Provedor de virtualização
- **Docker & Docker Swarm** – Orquestração de containers
- **Linux (Ubuntu/Debian)** – Sistema operacional das VMs

## 📥 Como Utilizar
### 🔧 Requisitos
- **Vagrant** instalado
- **VirtualBox** instalado
- **Git** instalado

### 📌 Instalação e Configuração
1. Clone este repositório:
   ```bash
   git clone https://github.com/mathfirewall/Projeto_Docker_Cluster.git
   cd Projeto_Docker_Cluster
   ```

2. atenção após clonar o repositório utilise o seguinte comando
    ```para iniciar o serviço
    vagrant init
    ```
3. Inicie as máquinas virtuais com o Vagrant:
   ```bash
   vagrant up --provision
   ```
4. Acesse o nó principal do cluster:
   ```bash
   vagrant ssh manager
   ```
5. Verifique o status do Swarm:
   ```bash
   docker node ls
   ```

Agora seu cluster Docker Swarm está pronto para receber aplicações!

## 🔄 Contribuições
Sinta-se à vontade para contribuir!
1. Faça um **fork** do repositório.
2. Crie uma nova branch: `git checkout -b minha-feature`
3. Faça suas alterações e commit: `git commit -m 'Nova funcionalidade'`
4. Envie para o repositório: `git push origin minha-feature`
5. Abra um **Pull Request**

## 📩 Contato
Para dúvidas ou sugestões, entre em contato:
- 📧 E-mail: suporte@zarabytesolutions.com
- 🌐 [Site Oficial](https://www.zarabytesolutions.com)

🚀 **Automatize e escale seu ambiente com o Projeto Docker Cluster!**

