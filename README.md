# 🔐 Ansible Nginx Hardening Project

Proyecto práctico de **automatización, despliegue y securización de un servidor web Nginx** en AWS utilizando **Ansible**, siguiendo buenas prácticas reales de entorno productivo.

Este proyecto simula el trabajo de un **Administrador de Sistemas / DevOps**, cubriendo desde el aprovisionamiento del servicio web hasta el hardening de seguridad del sistema operativo.

---

## 🧠 Objetivos del proyecto

- Automatizar la instalación y configuración de Nginx
- Separar entornos **DEV** y **PROD**
- Gestionar secretos de forma segura con **Ansible Vault**
- Aplicar hardening de seguridad a nivel de sistema
- Garantizar idempotencia y buenas prácticas en Ansible
- Simular un entorno real de producción

---

## 🏗️ Arquitectura

- **Servidor**: Amazon EC2 (Amazon Linux)
- **Acceso**: SSH por clave pública
- **Gestión**: Ansible desde nodo de control
- **Entornos**:
  - DEV
  - PROD

Ambos entornos se gestionan mediante `inventory.ini` y `group_vars`.

---

## 🧰 Tecnologías utilizadas

- Ansible
- Nginx
- Ansible Vault
- Firewalld
- Fail2ban
- SSH Hardening
- Amazon Linux
- Git & GitHub

---

## 📁 Estructura del proyecto

ansible/
├── inventory.ini
├── playbook.yml
├── group_vars/
│ ├── dev/
│ │ ├── vars.yml
│ │ └── vault.yml (ignorado en Git)
│ └── prod/
│ ├── vars.yml
│ └── vault.yml (ignorado en Git)
├── roles/
│ ├── nginx/
│ │ ├── tasks/
│ │ ├── templates/
│ │ └── handlers/
│ ├── security/
│ └── ssh_hardening/
└── README.md


---

## 🔐 Gestión de secretos

Los secretos sensibles (usuarios, contraseñas, variables críticas) se gestionan mediante **Ansible Vault**:

- Los ficheros `vault.yml` **no se suben a GitHub**
- Se descifran únicamente en tiempo de ejecución
- Diferentes credenciales para DEV y PROD

Ejecución con vault:

ansible-playbook -i inventory.ini playbook.yml -l dev --ask-vault-pass
ansible-playbook -i inventory.ini playbook.yml -l prod --ask-vault-pass

⚙️ Funcionalidades implementadas
🔧 Nginx

Instalación automática

Configuración mediante templates Jinja2

Hardening del servidor web:

server_tokens off

Headers de seguridad (XSS, CSP, etc.)

Health check HTTP automático

Validación de configuración antes de reiniciar

🔒 Seguridad del sistema
🔥 Firewall

Firewalld habilitado

Puertos mínimos abiertos:

SSH (22)

HTTP (80)

🛡️ Fail2ban

Protección frente a fuerza bruta en SSH

Servicio habilitado y activo

🔐 SSH Hardening

Acceso root deshabilitado

Autenticación por contraseña deshabilitada

Acceso solo por clave pública

Restricción de usuarios permitidos

Límite de intentos y tiempo de login

🧪 Validaciones

Playbooks idempotentes

Health check HTTP local

Verificación de configuración Nginx (nginx -t)

Separación clara de entornos

🚀 Cómo ejecutar el proyecto

ansible-playbook -i inventory.ini playbook.yml -l dev --ask-vault-pass
ansible-playbook -i inventory.ini playbook.yml -l prod --ask-vault-pass

