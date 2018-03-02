class Vehicle < ApplicationRecord
  validates :year, :make, :model, :variety, :condition, presence: true
  validates :mileage, :count, :price ,numericality: { greater_than_or_equal_to: 0 }
  validates :description, length: { minimum: 140 }
  validates :image_file_name, allow_blank: true, format: {
    with:    /\w+\.(gif|jpg|png)\z/i,
    message: "must reference a GIF, JPG, or PNG image"
  }
  CONDYS = %w(Used New Preowned)
  validates :condition, inclusion: { in: CONDYS }

  def self.find_used_vehicles
  	where(:condition => "Used")
  end

  def self.find_new_vehicles
  	where(:condition => "New")
  end

  def self.find_preowned_vehicles
  	where(:condition => "Preowned")
  end
end
