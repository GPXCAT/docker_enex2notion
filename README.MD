build
```bash
docker build -t enex2notion .
```

run
```bash
docker run --rm -it -v $(pwd):/app -w /app enex2notion --help
```

doc: https://github.com/vzhd1701/enex2notion