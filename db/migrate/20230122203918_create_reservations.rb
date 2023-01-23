class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.datetime :date
      t.integer :length_of_stay
      t.belongs_to :client
      t.belongs_to :hotel
      t.belongs_to :room
      
      t.timestamps
    end
  end
end
