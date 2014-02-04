class Program < ActiveRecord::Base
	belongs_to :user

	geocoded_by :full_address # full_address is a method which take some model's attributes to get a formatted address for example

  # the callback to set longitude and latitude
  after_validation :geocode

  # the full_address method
  def full_address
    "#{street}, #{city}, #{state}, #{country}"
  end
end
