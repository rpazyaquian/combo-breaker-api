class RenameCuisineTypeToCuisineName < ActiveRecord::Migration
  def change
    rename_column :cuisines, :type, :name
  end
end
