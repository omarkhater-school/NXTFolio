class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.references :profile, null: false, foreign_key: true
      t.string :country
      t.string :state
      t.string :city
      t.float :latitude
      t.float :longitude
      t.string :location_type

      t.timestamps
    end
  end
end
