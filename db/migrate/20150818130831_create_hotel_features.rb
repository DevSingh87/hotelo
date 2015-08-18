class CreateHotelFeatures < ActiveRecord::Migration
  def change
    create_table :hotel_features do |t|
      t.string :name
      t.integer :hotel_id

      t.timestamps null: false
    end
  end
end
