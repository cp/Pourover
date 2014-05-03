class Consumption < ActiveRecord::Base
  attr_accessible :consumed_at, :drink_id, :user_id

  belongs_to :drink
  belongs_to :user
end
