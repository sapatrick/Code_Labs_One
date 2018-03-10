module CustomersHelper
  def customer_last_name_first(customer)
  	"#{customer.clastname}, #{customer.cfirstname}"
  end

  def customer_full_name(customer)
    "#{customer.cfirstname} #{customer.clastname}"
  end
end
