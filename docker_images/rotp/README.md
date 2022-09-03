# Build
```
docker build -t juanlb/ruby_rotp:latest .
```

# Use
```
docker run --rm -e PASSWORD=THE_PASS -e ISSUER=THE_ISSUER juanlb/ruby_rotp:latest
```