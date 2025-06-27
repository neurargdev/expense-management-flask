### Created by @neurargdev (www.neurarg.com.ar)

#!/bin/sh

# create our project directory and move to it.
mkdir expense-management-flask && cd expense-management-flask

# install virtual environment
pip install pipenv

# install flask a dependecy on our project
pipenv install flask

# installing marshmallow as a project dependecy
pipenv install marshmallow 

