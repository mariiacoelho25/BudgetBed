class AddDescriptionToHotels < ActiveRecord::Migration[6.0]
  def change
    add_column :hotels, :description, :text
  end
end
