class AddCaregiverToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :caregiver, :boolean, default: false
  end
end
