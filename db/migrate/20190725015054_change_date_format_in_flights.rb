class ChangeDateFormatInFlights < ActiveRecord::Migration[5.2]
  def change
    change_column :flights, :start_date, :date
  end
end
