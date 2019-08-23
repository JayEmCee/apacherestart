#Restarts apache services
#Use case - GEINC4357938 - apache services were restarted by the webhosting team 

#!/bin/sh

ps auxw | grep apache2 | grep -v grep > /dev/null
if [ $? != 0 ]
then
        /etc/init.d/apache2 start > /dev/null
fi