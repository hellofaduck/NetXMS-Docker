Automaticaly builds with latest availaible version of NetXMS. 
- Current version of NetXMS in image on docker hub is 3.6
- If you dont have your own postgres database server (or docker image with postgres) use docker compose file from github repo to deploy a complete stack. For update netxms in stack from my docker compose file do not use ouroboros or watchtower, just recompose whole stack with docker-compose, it can save you from problem:"Can't resolve postgres hostname" wich shows up in netxms logs (i try to fix this in future relases)
- If you use only this docker container and you have your own postgres server that you additionaly configure through ENV variables you feel free to update it as you want, automaticaly by ouroboros etc. or manually, no issues found yet in this case
- All options for startup and configuration listed in files in human-readable format, you can get it in github repository (you can use docker compose for tested examples of config)

Already compiled Docker image you can get here:
https://hub.docker.com/r/hellofaduck/netxms

Please, if you found any problems or bugs (not in NetXMS :) ) you can submit it through github (preffered way) or PM me on reddit
https://www.reddit.com/user/hellofaduck

If you hate docker commandline interface as I, use great tool - portainer.io, a fantastic GUI for docker!
