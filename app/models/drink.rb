class Drink < ActiveRecord::Base
  attr_accessible :caffeine, :description, :image_url, :name

  belongs_to :consumption
end
