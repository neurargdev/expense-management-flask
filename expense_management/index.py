### Created by @neurargdev (www.neurarg.com.ar)

from flask import Flask, jsonify, request
from cashman.model.expense import Expense, ExpenseSchema
from cashman.model.income import Income, IncomeSchema
from cashman.model.transaction_type import TransactionType

app = Flask(__name__)

transactions = [
    Income('Salary', 8000),
    Income('Services', 1500),
    Expense('Update stock', 2000),
    Expense('Server purchase', 5000)
]

@app.route("/")
def tina():
    return "Welcome to the neurarg"

@app.route("/incomes")
def get_incomes():
    schema = IncomeSchema(many=True)
    incomes = schema.dump(
        filter(lambda t: t.type == TransactionType.INCOME, transactions)
    )
    return jsonify(incomes)

@app.route("/incomes", methods=['POST'])
def add_incomes():
    income = IncomeSchema().load(request.get_json())
    transactions.append(income)
    return '', 204

@app.route('/expenses')
def get_expense():
    scheme = ExpenseSchema(many=True)
    expenses = scheme.dump(
        filter(lambda t: t.type == TransactionType.EXPENSE, transactions)
    )
    return jsonify(expenses)

@app.route('/expenses', methods=['POST'])
def add_expense():
    expense = ExpenseSchema().load(request.get_json())
    transactions.append(expense)
    return '', 204


if __name__ == '__main__':
    app.run(debug=True)