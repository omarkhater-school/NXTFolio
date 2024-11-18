class AddUserIdToGeneralInfos < ActiveRecord::Migration[6.1]
  def change
    add_reference :general_infos, :user, null: true, foreign_key: true
  end
end
