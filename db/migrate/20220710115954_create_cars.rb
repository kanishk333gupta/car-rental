class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :color
      t.string :model
      t.integer :rental
      t.string :status
      t.string :picture

      t.timestamps
    end
  end
end
