class Consumption < ActiveRecord::Base
  attr_accessible :consumed_at, :drink_id, :user_id, :image_url, :street_address,
    :latitide, :longitude

  belongs_to :drink
  belongs_to :user

  geocoded_by :street_address
  after_validation :geocode
end
