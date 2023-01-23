class CreateAmenities < ActiveRecord::Migration[5.2]
  def change
    create_table :amenities do |t|
      t.string :name
      t.text :icon_img
      t.text :image_url
      t.text :description
      t.belongs_to :hotel
    end
  end
end
