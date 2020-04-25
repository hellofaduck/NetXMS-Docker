Automaticaly builds with latest availaible version of NetXMS. 
- Current version of NetXMS in image is 3.2-472
- For update do not use ouroboros or watchtower, just recompose whole stack with docker-compose, it can save you from problem:"Can't resolve postgres hostname" wich shows up in netxms logs (i try to fix this in future relases)
- All options for startup and configuration listed in files in human-readable format, you can get it in github repository

Already compiled Docker image you can get here:
https://hub.docker.com/r/hellofaduck/netxms
