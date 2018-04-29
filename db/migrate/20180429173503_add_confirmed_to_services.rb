class AddConfirmedToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :confirmed, :boolean, default: false
  end
end
