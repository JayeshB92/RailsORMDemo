class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts, {
        id: false
      } do |t|
      t.string :account_id, primary_key: true
      t.decimal :amount, precision: 12, scale: 2
      t.string :user_id

      t.timestamps
    end
  end
end
