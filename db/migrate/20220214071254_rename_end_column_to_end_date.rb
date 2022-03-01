class RenameEndColumnToEndDate < ActiveRecord::Migration[6.1]
  def change
    rename_column :reservations, :end, :end_date
  end
end
