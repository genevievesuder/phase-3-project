class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.string :bed_size
      t.boolean :kitchenette?
      t.text :image_url
      t.belongs_to :hotel

      t.timestamps
    end
  end
end
