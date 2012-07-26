class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :type
      t.string :status
      t.boolean :optional
      t.integer :order

      t.timestamps
    end
  end
end
