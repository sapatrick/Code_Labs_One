module EmployeesHelper
  def employee_last_name_first(employee)
  	"#{employee.lastname}, #{employee.firstname}"
  end

    def employee_full_name(employee)
    "#{employee.firstname} #{employee.lastname}"
  end

  #def employee_image(employee, class_name)
  #  if employee.employee_image_file.blank?
  #    if (!class_name.blank?)
   #     image_tag('placeholder_employee.png', class: class_name)
  #    else
   #     image_tag('placeholder_employee.png')
   #   end
  #  else
  #    image_tag(employee.employee_image_file)
  #  end
  #end
end
