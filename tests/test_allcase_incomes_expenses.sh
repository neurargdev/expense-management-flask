### Created by @neurargdev (www.neurarg.com.ar)

#!/bin/sh

# get incomes
curl http://localhost:5000/incomes

# add new incomes
curl -X POST -H "Content-Type: application/json" -d '{
    "description": "Sale course",
    "amount": 1500
}' http://localhost:5000/incomes

# check if sale course was added
curl http://localhost:5000/incomes

# get expenses
curl http://localhost:5000/expenses

# add new expenses
curl -X POST -H "Content-Type: application/json" -d '{
    "description": "Disk solid purchase",
    "amount": 500
}' http://localhost:5000/expenses

# check if disk solid purchase was added
curl http://localhost:5000/expenses