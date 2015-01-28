---
title: TYPO3 Dokumenation auf readthedocs.org rendern
author: Ingo Pfennigstorf
tags: typo3
layout: post
---

Seit einiger Zeit bietet die TYPO3 Infrastruktur die Möglichkeit, Dokumentationen im
[reStructuredText (reST)](http://docutils.sourceforge.net/rst.html) Format zu erstellen. Damit wurde das alte
[Star-Office Format .sxw](http://en.wikipedia.org/wiki/OpenOffice.org_XML), das bislang der Standard für
Extensiondokumentation war deprecated.

Dokumentationen aller Extensions, die im TYPO3 Extension Repository sind und eine Dokumentation besitzen werden bereits
automatisch auf [docs.typo3.org](http://docs.typo3.org) gerendert.
Ein Nachteil dieses Vorgehens ist, dass nicht alle Extensions im TYPO3 TER vorhanden sind, da sie in Repositorys wie
GitHub oder Bitbucket liegen. Nun kommt das SaaS Projekt [Read the Docs](https://readthedocs.org/) ins Spiel, das
Dokumentationen im Markdown oder reST Format nach jedem Push in das Sourcecode Repository erstellt. Voraussetzung ist
also, dass die Dokumentation TYPO3-konform im reST-Format vorliegt. Dazu wird ein Verzeichnis ```Documentation``` in der
Extension benötigt, in dem eine Konfigurationsdatei ```conf.py``` für das Rendering von Sphinx Dokumentationen in Read
the Docs liegt. Diese Datei hat im Kern den Folgenden Aufbau:

{% gist 4791f6fcc0047436b770 %}

Nun muss die Extension nur noch Read The Docs bekannt gemacht werden, damit dies auf entsprechende Änderungen reagiert
und die Dokumentation neu baut.

[Unser Beispielprojekt](http://typo3-tmpl-adw.readthedocs.org/de/latest/Index.html)

Sehr gelungen ist, dass auf jeder Seite der gerenderten Dokumentation ein Link ist "Edit on GitHub", mit dem man direkt
in die Quelldatei springen und (die nötigen Rechte vorausgesetzt) editieren kann.