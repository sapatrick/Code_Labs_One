class Employee < ApplicationRecord
	validates :first_name, :last_name, :email_address, :hire_date, :active, presence: true
	
	validates :employee_image_file, allow_blank: true, format
	{
  	  with:    /\w+\.(gif|jpg|png)\z/i,
  	  message: "must reference a GIF, JPG, or PNG image"
	}

	validates :sales_team, inclusion: { in: SALESTEAM }

	SALESTEAM = %w(Black_Squadron Outliers)


end
