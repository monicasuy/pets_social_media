class RemovePetIdFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :pet_id, :bigint
  end
end
