class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.date :start_date
      t.date :end_date
      t.string :photo
      t.decimal :total_value
      t.references :user, foreign_key: true
      t.references :pet, foreign_key: true
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
