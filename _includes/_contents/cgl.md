# Coding Guidelines

## Sinn und Zweck

Als Gruppe Software- und Serviceentwicklung wollen wir eine höchstmögliche Codequalität abliefern.

## Code Style

Grundsätzlich sind die Einstellungen für Jetbrains IDEs wie PhpStorm oder Idea in einer [settings.jar](ide/PhpStorm/settings.jar) hinterlegt und können mit File -> Import Settings importiert werden.

### PHP

* Tabs statt Spaces

### Java

### JavaScript

* Tabs statt Spaces

### Sass

Grundsätzlich wird der Scss Dialekt verwendet und die Guidelines aus den [Sass Guidelines](http://sass-guidelin.es/) verwendet, mit der Ausnahme dass die Einrückung mit Tabs statt Spaces vorgenommen wird.
Eine Konfiguration für einen Sass Linter ist [hier](https://gist.github.com/ipf/38f48f5140da92095bb2) zu finden.

## Workflow

### Jira

Ein Eintrag im Issue Tracker Jira bildet die Grundlage einer Änderung im Quellcode.

### Git

Als Werkzeug zur Versionskontrolle wird Git verwendet.

#### Commit Message

Das Commit Message Format orientiert sich an dem [Modell](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html).

### Github

[Subugoe](https://github.com/subugoe)

#### Pull Request

[Hinweise](http://blog.ploeh.dk/2015/01/15/10-tips-for-better-pull-requests/)

## Qualitätskriterien

Für jede Quelltextänderung müssen Unit Tests vorhanden und ausgeführt sein. Dies gilt nicht für Sprachen ohne Testing Frameworks wie TypoScript.

## Lizenzierung

Grundsätzlich wird die [AGPL](http://www.gnu.org/licenses/agpl-3.0.html) verwendet. Sollte diese nicht kompatibel zu dem benutzten System sein, wird eine kompatible Lizenz verwendet.