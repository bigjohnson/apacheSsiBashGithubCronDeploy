# directory where are all webhooks script files
SCRIPTDIR=/home/http/htdocs/site.com/webhoks/
# directory with the git repo to pull
REPODIR=/home/http/htdocs/site.com/pulled/
# lock semaphore to skip running multiple script copy if the pull duration in more than one minute
SEMAPHORE="${SCRIPTDIR}semaphore"
# webhooks file created by github when git repo is pushed
WEBHOOKSFILE="${SCRIPTDIR}pippo"
# lohfile with pull logs
LOGFILE="${SCRIPTDIR}webhook.log"

if [ -f "${WEBHOOKSFILE}" ]
then
        rm -f ${WEBHOOKSFILE}
        if [ ! -f ${SEMAPHORE} ]
        then
                touch ${SEMAPHORE}
                cd "${REPODIR}"
                echo ============================ >> ${LOGFILE}
                date >> ${LOGFILE}
                git pull origin master >> ${LOGFILE} 2>&1
                rm ${SEMAPHORE}
        fi
fi
