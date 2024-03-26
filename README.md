# apacheSsiBashGithubDeploy
An Apache server side include file runned on repo push wit Github webhooks that create a file on remote server.

The file existence is checked  every 1 minute with a cron script tat run the git pull command if the file is present. 

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

Add a Webhook on github that call https://site.com/webhoks/deploy.shtml on pull requets of your repo.

You need add shh keys an so on...

The apache server need [mod_include](https://httpd.apache.org/docs/2.4/howto/ssi.html) activated on the /home/http/htdocs/site.com/webhoks/ directory. 
