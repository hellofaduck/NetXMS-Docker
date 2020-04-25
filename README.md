Automaticaly builds with latest availaible version of NetXMS. 
- Current version of NetXMS in image is 3.2-472
- For update your current installation delete container, delete cached image and recompose.
  It will automaticaly upgrade database scheme and all other files, no data loss, using it myself in my homelab!
- All options for startup and configuration listed in files in human-readable format, you can get it in github repository

Already compiled Docker image you can get here:
https://hub.docker.com/r/hellofaduck/netxms
