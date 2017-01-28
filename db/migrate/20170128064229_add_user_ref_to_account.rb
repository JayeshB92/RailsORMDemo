class AddUserRefToAccount < ActiveRecord::Migration[5.0]
  def change
    # add_reference :accounts, :user, foreign_key: true
    # add_reference :accounts, :user, references: 'user_id'
    add_foreign_key :accounts, :users, column: :user_id, primary_key: :user_id
  end
end
