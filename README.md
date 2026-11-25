# Activité pratique n° 3 — XML, XSLT et SVG

Exemple simple de relevés de températures, avec DTD, schéma XML (XSD),
transformations HTML et SVG animé.

## 1. Arbre XML

```text
meteo
└── mesure (date)
	├── ville (nom, temperature)
	├── ville (nom, temperature)
	└── ...
```

`meteo` contient une ou plusieurs mesures. Chaque `mesure` possède une date
et une ou plusieurs villes. Une ville est un élément vide dont le nom et la
température sont des attributs.

## 2–3. DTD et document XML valide

- DTD : [meteo.dtd](meteo.dtd)
- Document lié à la DTD : [meteo-dtd.xml](meteo-dtd.xml)

## 4–5. Schéma XML et document XML valide

- Schéma : [meteo.xsd](meteo.xsd)
- Document lié au schéma : [meteo-xsd.xml](meteo-xsd.xml)

Le schéma utilise le type `xs:date` : les dates sont donc écrites au format
ISO (`AAAA-MM-JJ`).

## 6. Transformation en HTML

La feuille [meteo-html.xsl](meteo-html.xsl) transforme le document XML en une
page HTML présentant les températures sous forme de tableau.

## 7. Transformation en histogramme SVG animé

La feuille [meteo-svg.xsl](meteo-svg.xsl) génère un histogramme SVG animé
pour la première mesure du document. Ouvrir le fichier XML correspondant
dans un navigateur qui prend en charge les transformations XSLT intégrées
pour voir le résultat.

Les deux feuilles XSLT peuvent aussi être appliquées à l'un ou l'autre des
documents XML, par exemple avec un processeur XSLT 1.0.
