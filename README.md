# expense-management-flask
### The goal of our RESTful API is to help users manage income and expenses. 

Expense management, both personal and business, involves the process
of planning, controlling and analyzing income and expenses to optimize
the use of financial resources. This allows you to make infirmed decisions,
avoid unnecessary expenses, and achieve financial goals.

We learned about the basic components needed to develop a well-structured Flask application. We looked at how to use pipenv to manage the dependencies of our API. After that, we installed and used Flask and Marshmallow to create endpoints capable of receiving and sending JSON responses. In the end, we also looked at how to dockerize the API, which will facilitate the release of the application to the cloud.


- Run the API
    ./boostrap.sh

- Run tests cases
    ./test_incomes.sh
    ./test_allcase_incomes_expenses.sh

> Dockerizing Flask Applications

To create and run a Docker container based on the Dockerfile that we created, we can execute the following commands:

### build the image
docker build -t expense_management .

### run a new docker container named expense_management
docker run --name expense_management \
    -d -p 5000:5000 \
    expense_management

### fetch incomes from the dockerized instance
curl http://localhost:5000/incomes/


The **Dockerfile** is simple but effective, and using it is similarly easy. With these commands and this Dockerfile, we can run as many instances of our API as we need with no trouble. It's just a matter of defining another port on the host or even another host.

