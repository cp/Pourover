class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.integer :caffeine
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
