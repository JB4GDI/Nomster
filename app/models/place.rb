class Place < ActiveRecord::Base
	belongs_to :user
	geocoded_by :address
	after_validation :geocode

	validates :name, :address, :description, :presence => true
	validates :description, length: {minimum: 4}
end
