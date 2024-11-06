class CreateSpecificProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :specific_profiles do |t|
      t.references :profile, null: false, foreign_key: true
      t.string :type
      t.text :attributes_data

      t.timestamps
    end
  end
end
