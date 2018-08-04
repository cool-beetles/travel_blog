class FixColumnNameToTravel < ActiveRecord::Migration[5.1]
  def change
    rename_column :travels, :post_date, :travel_date
  end
end
