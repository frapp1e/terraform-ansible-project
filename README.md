# Terraform + Ansible Project

Este proyecto integra **Terraform** y **Ansible** para gestionar infraestructura y la configuración de servidores de manera automatizada.  

> ⚠️ Nota: Este repositorio no incluye binarios de proveedores ni archivos de estado de Terraform (`.terraform/`, `*.tfstate`) para mantener el repositorio limpio y evitar problemas con GitHub.

---

## Estructura del proyecto

terraform-ansible-project/
├── ansible/                 # Playbooks y roles de Ansible
│   ├── files/               # Archivos estáticos
│   ├── group_vars/          # Variables de grupos
│   ├── inventory.ini        # Inventario de hosts
│   ├── roles/               # Roles para configuraciones específicas
│   └── playbook.yml         # Playbook principal
├── terraform/               # Configuraciones de Terraform
│   ├── main.tf              # Recursos principales
│   ├── outputs.tf           # Salidas
│   ├── provider.tf          # Proveedores
│   ├── variables.tf         # Variables
│   └── .gitignore           # Ignorar binarios y estados
└── README.md                # Documentación del proyecto



---

## Requisitos

- **Terraform** >= 1.5  
- **Ansible** >= 2.15  
- **Git** >= 2.40  
- Acceso a los proveedores necesarios (AWS, etc.)  

> Recomendado: tener configurado un entorno virtual o contenedores para aislar dependencias.

---

## Uso

### 1. Inicializar Terraform
cd terraform
terraform init

2. Aplicar infraestructura
terraform apply

3. Configurar servidores con Ansible
cd ansible
ansible-playbook -i inventory.ini playbook.yml

