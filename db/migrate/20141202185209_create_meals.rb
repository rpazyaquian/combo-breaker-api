class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.belongs_to :user, index: true
      t.belongs_to :cuisine, index: true

      t.timestamps null: false
    end
  end
end
