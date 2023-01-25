class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.date :check_in
      t.date :check_out
      t.integer :discount, default: 0
      t.float :final_price
      t.belongs_to :user
      t.belongs_to :room

      t.timestamps
    end
  end
end
