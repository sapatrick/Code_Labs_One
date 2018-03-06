class EmployeesController < ApplicationController
  
  def index
  	@employees = Employee.all
  end

  def show
  	@employee = Employee.find(params[:id])
  end

private
    def vehicle_params
    	params.require(:employee).permit(:firstname, :lastname)
    end

end
