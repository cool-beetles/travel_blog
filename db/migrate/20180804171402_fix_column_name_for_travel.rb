class FixColumnNameForTravel < ActiveRecord::Migration[5.1]
  def change
    rename_column :travels, :title, :city_name
  end
end
