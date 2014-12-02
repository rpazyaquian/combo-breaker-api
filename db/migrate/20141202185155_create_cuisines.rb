class CreateCuisines < ActiveRecord::Migration
  def change
    create_table :cuisines do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
