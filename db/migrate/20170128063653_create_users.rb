class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users, id: false do |t|
      t.string :user_id, primary_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
