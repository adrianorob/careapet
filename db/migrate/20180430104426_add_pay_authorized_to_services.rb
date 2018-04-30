class AddPayAuthorizedToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :pay_authorized, :boolean, default: false
  end
end
