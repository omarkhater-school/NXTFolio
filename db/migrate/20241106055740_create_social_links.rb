class CreateSocialLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :social_links do |t|
      t.references :profile, null: false, foreign_key: true
      t.string :platform
      t.string :url

      t.timestamps
    end
  end
end
