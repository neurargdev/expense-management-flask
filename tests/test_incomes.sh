### Created by @neurargdev (www.neurarg.com.ar)

#!/bin/sh

# get incomes
curl http://localhost:5000/incomes

# add incomes
curl -X POST -H "Content-Type: application/json" -d '{
    "description": "Sale course",
    "amount": 1500
}' http://localhost:5000/incomes

# check if sale course was added
curl http://localhost:5000/incomes