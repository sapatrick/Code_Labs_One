module VehiclesHelper
  def format_vehicle_price(vehicle)
  	if vehicle.price < 1
     content_tag(:em, 'Call for Price')
     # this also works: "<strong>Call Dealership for Price</strong>".html_safe
   else
     number_to_currency(vehicle.price)
   end
  end

  def full_vehicle_title(vehicle)
  	"#{vehicle.year} #{vehicle.make} #{vehicle.model} #{vehicle.variety}"
  end

  def image_for(vehicle, class_name)
    if vehicle.image_file_name.blank?
      if (!class_name.blank?)
        image_tag('placeholder.png', class: class_name)
      else
        image_tag('placeholder.png')
      end
    else
      image_tag(vehicle.image_file_name)
    end
  end
end