class CustomersController < ApplicationController
  def index
  	@customers = Customer.all
  end

  def show
  	@customer = Customer.find(params[:id])
  end
 def edit
  	@customer = Customer.find(params[:id])
  end

  def update
  	@customer = Customer.find(params[:id])
    if @customer.update(customer_params)
    redirect_to @customer, notice: "Customer successfully updated!"
  else
    render :edit
  end
  end

  def new
  	@customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
    redirect_to @customer, notice: "Customer successfully added!"
    else
      render :new
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to customers_url, alert: "Customer successfully deleted!"
  end

private
    def customer_params
    	params.require(:customer).permit(:cfirstname, :clastname, :caddress_line_one, :caddress_line_two, :caddress_line_three)
    end

end
