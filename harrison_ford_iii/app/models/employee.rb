class Employee < ApplicationRecord
	validates :first_name, :last_name, :email_address, :hire_date, presence: true
	validates :employee_image_file, allow_blank: true, format:
	{
  	  with:    /\w+\.(gif|jpg|png)\z/i,
  	  message: "must reference a GIF, JPG, or PNG image"
	}

 SALESTEAM = %w(Black\ Squadron Outliers)
 validates :sales_team, inclusion: { in: SALESTEAM }
    
    has_many :clients, dependent: :destroy
    has_many :transactions, dependent: :destroy


  def full_name_displayed
    "#{first_name} #{last_name}"
  end

end
