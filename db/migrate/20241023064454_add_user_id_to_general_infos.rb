class AddUserIdToGeneralInfos < ActiveRecord::Migration[6.0]
  def up
    # Step 1: Add the column without the NOT NULL constraint
    add_reference :general_infos, :user, foreign_key: true

    # Step 2: Populate the user_id for existing records
    GeneralInfo.reset_column_information
    GeneralInfo.find_each do |general_info|
      # Set the user_id for each general_info here
      # Example: general_info.update(user_id: some_user_id)
      # You need to determine the appropriate user_id for each record
    end

    # Step 3: Change the column to NOT NULL after populating
    change_column_null :general_infos, :user_id, false
  end

  def down
    remove_reference :general_infos, :user, foreign_key: true
  end
end
