Spotimer 
Software zum Starten und automatischen Beenden von Spotify

Version 0.9.3

Installation:
=============
Spotimer_installation ausf�hren
Spotimer_configuration auf Desktop ausf�hren

Optionen:

# Installation of Spotimer #
	* new = Erzeugt eine neue  Konfigurationsdatei mit nachfolgend definierten Einstellungen
	* quit = Beendet die Installation/Konfiguration von Spotimer OHNE �nderungen vorzunehmen
	* remove = Entfernt Spotimer vollst�ndig vom Benutzerprofil (Verkn�pfungen sowie Konfigurationsdateien)

# Konfiguration #

	* Choose Runtime of Spotimer = Regelt wie lange Spotify laufen soll, Zeit in Sek. (3600 = 1 Std)
	* Spotify Autostart = Legt fest ob Spotify beim Starten von Spotimer automatisch mit gestartet werden soll.
	* Windows Shutdown (experimentel) = Legt fest ob Windows nach dem Ablauf des Timers herunter gefahren werden soll.

# aktuelle Konfiguration wird zusammengefasst angezeigt #	
	
	* next = speichert die aktuelle Konfiguration
	* new = Konfigurationsmen� wird neu geladen, bisherige Einstellungen werden verworfen.
	* quit = Beendet Die Installtion/Konfiguration von Spotimer ohne �nderung

# Spotimer wurde installiert #


Benutzung
=========

Auf dem Desktop befinden sich zwei Verkn�pfungen "spotimer" sowie "spotimer-configuration"

"spotimer_configuration" startet das Installations und Konfigurationsmen�, siehe Abschnitt "Konfiguration"

"spotimer" startet Spotimer eine CMD wird minimiert ge�ffnet und bleibt mit Timer im Hintergrund. 
	Je nach Konfiguration wird Spotify automatisch ge�ffnet, sobald Spotimer gestartet wird. Spotify kann ganz normal genutzt werden.
	Spotify wird nach Ablauf des Timers �ber den Prozessnamen beendet
	Je nach Konfiguration wird Windows nach ablauf des Timers herunter gefahren.