class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.date :start_date
      t.date :end_date
      t.references :buyer
      t.references :user_tasks

      t.timestamps
    end
  end
end