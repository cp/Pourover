class CreateConsumptions < ActiveRecord::Migration
  def change
    create_table :consumptions do |t|
      t.integer :drink_id
      t.datetime :consumed_at
      t.integer :user_id

      t.timestamps
    end
  end
end
