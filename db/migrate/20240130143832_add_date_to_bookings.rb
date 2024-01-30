class AddDateToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :starting_date, :timestamp
    add_column :bookings, :ending_date, :timestamp
  end
end
