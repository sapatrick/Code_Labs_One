class TransactionsController < ApplicationController
  def index
    @employee = Employee.first
    @transactions = @employee.transactions
  end

  def new
    @employee = Employee.first
    @transaction = @employee.transactions.new
  end

  def create
  	@employee = Employee.first
    @transaction = @employee.transactions.new(transaction_params)
    if @transaction.save
      redirect_to employee_transactions_path(@employee),
        notice: "Your transaction has been processed."
    else
      render :new
    end
  end

  def destroy
    @transaction = @employee.transactions.find(params[:id])
    @transaction.destroy
    redirect_to employee_transactions_path(@employee), notice: "Your transaction has been successfully deleted!"
  end
private

  def transaction_params
    params.require(:transaction).permit(:date_completed, :client_name, :vehicle)
  end

  def set_employee
    @employee = Employee.first
  end

end
