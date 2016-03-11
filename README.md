Welcome to the spotimer wiki!
## Spotimer - a script to start and stop Spotify automatically

### Short Description
You can use Spotimer to:
* start your Spotify-Client
* close your Spotify-Client after an adaptable amount of time
* Shutdown your Windows-System

### Requirements
Spotimer needs:
* a Windows-Plattform (Windows 7, 8, 8.1, 10 are tested, others will probably work too)
* Spotify Desktop-Client (It won't work with the Webplayer-Version)

### Installation
* get Spotify and install it
* get Spotimer und unzip it
* run Spotimer_installation.bat

### Configuation
* run Spotimer_configuration on your desktop
* you can choose between
    - new (will create a new configuration, you can specify some options after choosing 'new'. Will overwrite the old configuration)
    - quit (will close the configuration-dialog without! saving anything)
    - remove (will completly remove spotimer from your system)

* if you selected "new" you can choose:
    - Choose Runtime of Spotimer (a bit misleadingly.. its the time in sec. that you allow Spotify to run before Spotimer will close it. Example:3600 = 1h)
    - Spotify Autostart = (if set to 'yes' it will launch Spotify each time Spotime is started)
    - Windows Shutdown (experimental) = (if set to 'yes' the script will try to shutdown Windows after Spotidfy has been closed)
* after setting the parameters wich are descripted above, you can check them and accept the configuration or restart the configurationprocess.)
    - next (save your configuration)
    - new (restarts the configurationdialog)
    - quit (quits the script without saving)

### Start/Stop
* to start Spotimer, use Spotimer on your Desktop

### the technical background - or - can i change stuff?
first of all: Spotimer is (at the moment) based on really simple, really basic batchscripts. You are free to edit, extend or optimize the scripts all the way you want. 
Spotimer consists of 3 batchfiles. 
* spotimer_installer.bat  (copys just some links and the spotimer_configuration.bat to their destinations.)
* Spotimer_configuration.bat (will create the spotimer.bat with adjustable parameters.)
* Spotimer.bat (the "mainscript".. can start/stop spotify and shutdown windows)
there are also some other files but those are just links (i didn't want to create via batchscript) and the iconfile.
You find your files in this locations:
* spotimer_configuration.bat "c:\Users\%username%\AppData\Roaming\Spotify\spotimer_configuration.bat"
* spotimer.bat "c:\Users\%username%\AppData\Roaming\Spotify\spotimer.bat"
* spotimer.lnk "c:\Users\%username%\Desktop\spotimer.lnk"
* spotimer_configuration.lnk "c:\Users\%username%\Desktop\spotimer_configuration.lnk"

### Disclamer
i'm in no way connected to the Spotify GmbH. I will not link to or publish any Software from Spotify. I develop Spotimer in my spare time and don't get any money from anyone for anything that is related to this Software. As this Software is able to shutdown your system, please be sure to save and close your work before using it. I'm not responsible for any data loss that occurs from using this software. 
