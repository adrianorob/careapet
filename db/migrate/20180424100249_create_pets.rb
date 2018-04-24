class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.string :age
      t.string :weight
      t.text :description
      t.string :vaccine
      t.string :photo
      t.string :comment
      t.boolean :castrated
      t.string :sex
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
