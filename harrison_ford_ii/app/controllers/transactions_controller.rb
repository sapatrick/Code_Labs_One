class TransactionsController < ApplicationController
	def index
  		@employee = Employee.find(params[:employee_id])
  		@customer = Customer.find(params[:customer_id])
  		@transactions = @customer.transactions
  		@sales = @employee.transactions
	end
end
