# sphinx-multiversion

# Commands:

```
pip install -r requirements.txt   

sphinx-apidoc . -o docs -F -t sphinx_templates -H multi-version -A "Hehe Inc" -e

cp -r _templates/* docs/_templates
cp -r plantuml docs

cd docs

# Without sphinx-multiversion
# sphinx-build . _build/html

# With sphinx-multiversion
sphinx-multiversion . _build/html

# Open documentation
open _build/html/main/index.html
```