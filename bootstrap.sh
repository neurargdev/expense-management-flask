### Created by @neurargdev (www.neurarg.com.ar)

#!/bin/sh

export FLASK_APP=./expense_management/index.py
pipenv run flask --debug run -h 0.0.0.0
