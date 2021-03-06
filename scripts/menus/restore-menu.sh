#!/bin/bash

clear

while [ 1 ]
do
CHOICE=$(
whiptail --title "Restore Menu" --menu "Make your choice" 25 25 16 \
   "1)" "OMBIv3"   \
   "2)" "NZBGet"  \
   "3)" "Plex"  \
   "4)" "SABNZBD"  \
   "5)" "Sonarr"  \
   "6)" "Radarr"  \
   "7)" "Emby"  \
   "8)" "PlexDrive"  \
   "9)" "Tautulli"  \
   "10)" "Jackett"  \
   "11)" "CouchPotato"  \
   "12)" "Lidarr"   \
   "13)" "Organizr"   \
   "14)" "Muximux"   \
   "15)" "Heimdall"  \
   "16)" "Exit  "  3>&2 2>&1 1>&3
)

result=$(whoami)
case $CHOICE in
   "1)")
     echo ymlprogram ombiv3 > /opt/plexguide/tmp.txt
     echo ymldisplay OMBIV3 >> /opt/plexguide/tmp.txt
     bash /opt/plexguide/scripts/docker-no/restore-script.sh
       ;;

   "2)")
     echo ymlprogram nzbget > /opt/plexguide/tmp.txt
     echo ymldisplay NZBGET >> /opt/plexguide/tmp.txt
     bash /opt/plexguide/scripts/docker-no/restore-script.sh
     ;;

   "3)")
     echo ymlprogram plex > /opt/plexguide/tmp.txt
     echo ymldisplay PLEX >> /opt/plexguide/tmp.txt
     bash /opt/plexguide/scripts/docker-no/restore-script.sh
     ;;

   "4)")
     echo ymlprogram sabnzbd > /opt/plexguide/tmp.txt
     echo ymldisplay SABNZBD >> /opt/plexguide/tmp.txt
     bash /opt/plexguide/scripts/docker-no/restore-script.sh
     ;;

   "5)")
     echo ymlprogram sonarr > /opt/plexguide/tmp.txt
     echo ymldisplay SONARR >> /opt/plexguide/tmp.txt
     bash /opt/plexguide/scripts/docker-no/restore-script.sh
     ;;

   "6)")
     echo ymlprogram radarr > /opt/plexguide/tmp.txt
     echo ymldisplay RADARR >> /opt/plexguide/tmp.txt
     bash /opt/plexguide/scripts/docker-no/restore-script.sh
     ;;

   "7)")
     echo ymlprogram embyserver > /opt/plexguide/tmp.txt
     echo ymldisplay EMBY >> /opt/plexguide/tmp.txt
     bash /opt/plexguide/scripts/docker-no/restore-script.sh
     ;;

   "8)")
   bash /opt/plexguide/scripts/docker-no/restore-script-plexdrive.sh
   clear
   ;;

   "9)")
     echo ymlprogram tautulli > /opt/plexguide/tmp.txt
     echo ymldisplay Tautulli >> /opt/plexguide/tmp.txt
     bash /opt/plexguide/scripts/docker-no/restore-script.sh
     ;;

  "10)")
    echo ymlprogram jackett > /opt/plexguide/tmp.txt
    echo ymldisplay Jackett >> /opt/plexguide/tmp.txt
    bash /opt/plexguide/scripts/docker-no/restore-script.sh
    ;;

   "11)")
     echo ymlprogram couchpotato > /opt/plexguide/tmp.txt
     echo ymldisplay CouchPotato >> /opt/plexguide/tmp.txt
     bash /opt/plexguide/scripts/docker-no/restore-script.sh
     ;;

   "12)")
     echo ymlprogram lidarr > /opt/plexguide/tmp.txt
     echo ymldisplay LIDARR >> /opt/plexguide/tmp.txt
     bash /opt/plexguide/scripts/docker-no/restore-script.sh
     ;;

   "13)")
     echo ymlprogram organizr > /opt/plexguide/tmp.txt
     echo ymldisplay ORGANIZR >> /opt/plexguide/tmp.txt
     bash /opt/plexguide/scripts/docker-no/restore-script.sh
     ;;

   "14)")
     echo ymlprogram muximux > /opt/plexguide/tmp.txt
     echo ymldisplay MUXIMUX >> /opt/plexguide/tmp.txt
     bash /opt/plexguide/scripts/docker-no/restore-script.sh
     ;;

   "15)")
     echo ymlprogram heimdall > /opt/plexguide/tmp.txt
     echo ymldisplay Heimdall >> /opt/plexguide/tmp.txt
     bash /opt/plexguide/scripts/docker-no/restore-script.sh
     ;;

   "16)")
       clear
       exit 0
       ;;
esac
done
exit
