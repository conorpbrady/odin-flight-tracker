class CreateBookedPassengers < ActiveRecord::Migration[5.2]
  def change
    create_table :booked_passengers do |t|
      t.integer :booking_id
      t.integer :passenger_id

      t.timestamps
    end
  end
end
