class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.text :description
      t.string :sex
      t.string :size
      t.string :breed

      t.timestamps
    end
  end
end
