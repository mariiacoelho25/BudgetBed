# db/migrate/create_rooms.rb

class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :capacity
      t.decimal :daily_rate
      t.references :hotel, foreign_key: true # This adds a foreign key column

      t.timestamps
    end
  end
end
