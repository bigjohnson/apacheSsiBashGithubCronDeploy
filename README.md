# apacheSsiBashGithubDeploy
An Apache server side include file runned on repo push wit Github webhooks that create a file on remote server.

The file existence is checked wit a cron script tat run the git pull command every 1 minute. 

Insert pull.sh in crontab:
```
*       *       *       *       *       /home/http/htdocs/site.com/webhoks/pull.sh
```
File permissions:
```
-rw-rw-r--. 1 realuser realuser   32 26 mar 20.27 deploy.shtml
-rw-r-x---. 1 root   realuser  724 26 mar 20.23 pull.sh
-rw-r--r--. 1 realuser realuser 2784 26 mar 20.29 webhook.log
```

