#!/bin/bash

source /src/.env

python ./pcs-inspect.py -c $PCEE_CUSTOMER_NAME -u $PCEE_API_URL -a $PCEE_ACCESS_KEY -s $PCEE_SECRET_KEY
