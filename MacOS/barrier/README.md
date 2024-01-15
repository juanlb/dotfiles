# Hay que habilitar SSL

Esto lo escribi de memoria, mirá los logs de error y lo sacás.

```bash
cd "/Users/juanlb/Library/Application Support/barrier/SSL
openssl req -new -x509 -sha256 -days 999 -nodes -out Barrier.pem -keyout Barrier.pem
```

## Despues habilitar SSL en el cliente
Copiar el .pem a la carpeta del cliente.

```bash
mkdir -p /Users/juanlb/Library/Application\ Support/barrier/SSL/Fingerprints
touch TrustedClients.txt
```
## Agregar la clave que se ve en error de conexión:
```
v2:sha256:<el código>
```