class AddUserRefToPicture < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :pictures, :users, column: :image_id, primary_key: :user_id, on_delete: :cascade, on_update: :cascade
  end
end
