module EmployeesHelper
  def employee_last_name_first(employee)
  	"#{employee.last_name}, #{employee.first_name}"
  end

    def employee_full_name(employee)
    "#{employee.first_name} #{employee.last_name}"
  end

  def image_for(employee)
    if employee.employee_image_file.blank?
      image_tag('placeholder_employee.png')
    else
      image_tag(employee.employee_image_file)
    end
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
