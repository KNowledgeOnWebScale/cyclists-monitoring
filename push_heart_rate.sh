#!/bin/bash

# arguments:
# 1. rider UUID
# 2. heart rate value

# URL of C-SPARQL server
BASE_URL=http://localhost:8275

# construct current date and time in underscore format
DT=$(date +%FT%T.%3NZ)
DT_U=$(echo $DT | sed -e 's/[-T:.]/_/g')

# name of template file
TEMPLATE=heart_rate.template

# substitute template variables by real values (date & time, rider UUID and heart rate value)
PAYLOAD="$(cat $TEMPLATE | sed -e 's/<DATETIME>/'"$DT"'/g' -e 's/<DATETIME_UNDERSCORE>/'"$DT_U"'/g' -e 's/<UUID>/'"$1"'/g' -e 's/<VALUE>/'"$2"'/g')"

# post heart rate observation on C-SPARQL stream URL
curl -X POST \
"$BASE_URL$"/streams/http%3A%2F%2Fidlab.ugent.be%2Fcycling%2Fstream \
-d "$PAYLOAD"
