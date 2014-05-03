class AddimageUrlToConsumptions < ActiveRecord::Migration
  def up
    add_column :consumptions, :image_url, :string
  end

  def down
    remove_column :consumptions, :image_url
  end
end
