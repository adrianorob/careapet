class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.decimal :bath_value
      t.decimal :walk_value
      t.decimal :play_value
      t.decimal :look_after_value
      t.decimal :vet_value
      t.decimal :training_value
      t.decimal :clean_house_value
      t.text :comment

      t.timestamps
    end
  end
end
