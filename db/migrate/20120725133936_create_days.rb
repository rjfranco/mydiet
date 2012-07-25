class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.date :date
      t.integer :score
      t.decimal :weight
      t.decimal :fat

      t.timestamps
    end
  end
end
