
# Ejecutar el comando curl para aplicar las reglas
curl -X PUT \\
  -H "Authorization: token $GH_TOKEN" \\
  -H "Accept: application/vnd.github+json" \\
  https://api.github.com/repos/$USER/$REPO/branches/main/protection \\
  -d @branch_protection_rules.json
"""

with open("/mnt/data/apply_branch_protection.sh", "w") as f:
    f.write(bash_script)

# 2. README.md explicativo
readme_content = """# Security Checklist Repo

Este repositorio incluye:
- Un archivo JSON (`branch_protection_rules.json`) con las reglas de protección para la rama principal.
- Un script Bash (`apply_branch_protection.sh`) que aplica las reglas usando la API de GitHub.

## Cómo usar

1. Obtén un **GitHub Personal Access Token (PAT)** con permisos de `repo` y `admin:repo_hook`.
2. Edita el script `apply_branch_protection.sh` y reemplaza `tu_token_aquí` por tu token real (¡no lo subas al repositorio!).
3. Dale permisos de ejecución al script:
   ```bash
   chmod +x apply_branch_protection.sh
