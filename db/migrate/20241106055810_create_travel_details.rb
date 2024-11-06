class CreateTravelDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :travel_details do |t|
      t.references :profile, null: false, foreign_key: true
      t.string :country
      t.string :state
      t.string :city
      t.date :start_date
      t.date :end_date
      t.string :details

      t.timestamps
    end
  end
end
