class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true # foreign key to users
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :gender
      t.string :phone
      t.text :bio
      t.text :highlights
      t.references :template, null: false, foreign_key: true # foreign key to templates

      t.timestamps
    end
  end
end
