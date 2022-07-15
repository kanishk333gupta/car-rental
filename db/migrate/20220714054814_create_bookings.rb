class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :book_date
      t.datetime :return_date
      t.integer :due_amt
      t.integer :service_amt
      t.references :user, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
