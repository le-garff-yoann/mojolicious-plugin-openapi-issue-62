mojolicious-plugin-openapi-issue-62
===================================

# Unit tests

```bash
cpanm .

prove -l # test if there are weirds $ref (~ "#\/definitions\/__"). There are none, so it's okay hum? 
```

# Test via `curl`

```bash
hypnotoad script/t-app

curl -L http://localhost:8080/api # look at the output, you'll see "#\/definitions\/__" 
```

