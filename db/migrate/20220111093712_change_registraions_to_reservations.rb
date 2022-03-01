class ChangeRegistraionsToReservations < ActiveRecord::Migration[6.1]
  def change
    rename_table :registrations, :reservations
  end
end
