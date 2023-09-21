class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :hotel, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.text :other_attributes

      t.timestamps
    end
  end
end
