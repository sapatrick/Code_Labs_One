class TransactionsController < ApplicationController
before_action :set_employee

  def index
    @transactions = @employee.transactions
  end

  def new
    @transaction = @employee.transactions.new
  end

  def create
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
    params.require(:transaction).permit(:date_completed, :vehicle)
  end

  def set_employee
    @employee = Employee.first
  end

end
