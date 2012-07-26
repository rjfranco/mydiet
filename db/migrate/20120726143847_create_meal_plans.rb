class CreateMealPlans < ActiveRecord::Migration
  def change
    create_table :meal_plans do |t|
      t.boolean :active

      t.timestamps
    end
  end
end
