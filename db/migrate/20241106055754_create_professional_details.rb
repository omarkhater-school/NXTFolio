class CreateProfessionalDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :professional_details do |t|
      t.references :profile, null: false, foreign_key: true
      t.string :company
      t.string :industry
      t.string :job_name
      t.string :experience
      t.string :specialization

      t.timestamps
    end
  end
end
