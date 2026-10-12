# Softwareengineering I - Prof. Jan Philipps

In diesem Projekt sind eine  [Spezifikationvorlage](src/main/asciidoc/examples/vorlage.adoc) und beispielhafte [UML-Diagramme](src/main/puml/examples) zur Veranstaltung Softwareengineering I gesammelt.
Zum besseren Verständnis der Vorlage gibt es zusätzlich ein [Spezifikationsbeispiel](src/main/asciidoc/examples/beispiel.adoc), das alle relevanten Aspekte der Vorlage illustriert.

Die beiden AsciiDoc Dokumente lassen sich auch direkt mit dem Browser unter den GitLab Pages des Projektes als gerendertes HTML Dokument erreichen:
- [Spezifikation](https://janphilipps.pages.gitlab.lrz.de/swe1/software-engineering-1/examples/vorlage.html)
- [Beispiel](https://janphilipps.pages.gitlab.lrz.de/swe1/software-engineering-1/examples/beispiel.html)

## Eigene Teamspezifikation

In den Praktika erstellen wir eine eigene [Teamspezifikation](src/main/asciidoc/spezifikation.adoc).
Damit Sie nicht mit mehreren Projekten hantieren müssen, habe ich diese Teamspezifikation hier integriert, sodass wir diese dann Schritt für Schritt erweitern können.
D.h. neben der eigenen Teamspezifikation haben wir auch immer das [Spezifikationsbeispiel](src/main/asciidoc/examples/beispiel.adoc) und die [Spezifikationvorlage](src/main/asciidoc/examples/vorlage.adoc) zur Verfügung.

Die eigene Teamspezifikation wird über eine integrierte [GitLab Pipeline](.gitlab-ci.yml) automatisch in HTML-Seiten umgewandelt und ebenfalls als gerendertes HTML Dokument unter den GitLab Pages des Projektes verfügbar gemacht: [Teamspezifikation](https://janphilipps.pages.gitlab.lrz.de/swe1/software-engineering-1/).

## Legende UML-Diagramme

Eine Legende für alle UML-Diagramme zum Thema Softwareengineering ist in einem [Codingstyle Projekt](https://github.com/uhafner/codingstyle/tree/main/doc/uml) von Prof. Dr. Ullrich Hafner zu finden.

Diese Legenden stehen in der Klausur als Ausdruck zur Verfügung.

## Lokales Erzeugen der HTML-Seiten

Die Spezifikation inklusive der UML-Diagramme wird automatisch über ein [AsciiDoc](https://asciidoctor.org/docs/what-is-asciidoc/) Dokument in HTML-Seiten umgewandelt.
Dazu wird das [AsciiDoctor Maven Plugin](https://asciidoctor.org/docs/asciidoctor-maven-plugin/) benutzt.
Mit einem einfachen Aufruf von `./mvnw` werden die Seiten lokal erzeugt und im `target/generated-docs` Ordner abgelegt.

## Automatisches Deployment der HTML-Seiten

Die Spezifikation wird mittels Continuous deployment (CD) automatisch auf GitLab publiziert.
Dort sind die aktuellen HTML-Seiten der Spezifikation unter dem Link GitLab Pages zu finden.

## Lizenz

Die gesamten Dokumente unterliegen der [Creative Commons Attribution 4.0 International Lizenz](https://creativecommons.org/licenses/by/4.0/).

![Creative Commons License](https://i.creativecommons.org/l/by/4.0/88x31.png)

