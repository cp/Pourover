class Consumption < ActiveRecord::Base
  attr_accessible :consumed_at, :drink_id, :user_id
end
