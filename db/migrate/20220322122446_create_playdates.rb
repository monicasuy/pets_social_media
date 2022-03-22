class CreatePlaydates < ActiveRecord::Migration[6.1]
  def change
    create_table :playdates do |t|
      t.references :pet, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
