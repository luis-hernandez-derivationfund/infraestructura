# Usar una imagen base oficial de Terraform
FROM hashicorp/terraform:1.8.5

# Establecer el directorio de trabajo
WORKDIR /workspace

# Copiar el contenido de tu proyecto al contenedor
COPY . .

# Copiar el script de entrada y darle permisos de ejecución
COPY entrypoint.sh /workspace/entrypoint.sh
RUN chmod +x /workspace/entrypoint.sh

# Ejecutar comandos Terraform directamente
RUN terraform init && \
    terraform fmt && \
    terraform validate