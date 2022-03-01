class CreateRegistrations < ActiveRecord::Migration[6.1]
  def change
    create_table :registrations do |t|
      t.date :start
      t.date :end
      t.integer :guests
      t.string :total_day
      t.integer :total

      t.timestamps
    end
  end
end
