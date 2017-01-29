class AddUserRefToAccount < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :accounts, :users, column: :user_id, primary_key: :user_id, on_delete: :cascade, on_update: :cascade
  end
end
