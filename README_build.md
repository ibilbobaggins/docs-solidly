
# Build manual

## Build locally:
```
npm install
npm run build
npm run serve
```

Site available at http://localhost:4000

## Build with docker:

```
docker build -t my-docs-solidly .
docker run  -p 5000:5000 my-docs-solidly
```
Site available at http://localhost:5000
