class EmployeesController < ApplicationController
  def index
  	@employees = Employee.all
  end

  def show
  	@employee = Employee.find(params[:id])
  end

  def edit
  	@employee = Employee.find(params[:id])
  end

  def update
  	@employee = Employee.find(params[:id])
    if @employee.update(employee_params)
    redirect_to @employee, notice: "employee successfully updated!"
  else
    render :edit
  end
  end

  def new
  	@employee = Employee.new
    @client = @employee.clients.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
    redirect_to @employee, notice: "Employee successfully added!"
    else
      render :new
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_url, alert: "Employee successfully deleted!"
  end

private
    def employee_params
    	params.require(:employee).permit(:first_name, :last_name, :email_address, :hire_date, :active, :employee_image_file, :sales_team)
    end
end