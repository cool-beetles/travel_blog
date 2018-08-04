class AddIndexForTravels < ActiveRecord::Migration[5.1]
  def change
    add_column :travels, :post_date, :date
    add_index :travels, :post_date
  end
end
