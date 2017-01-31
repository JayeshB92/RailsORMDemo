class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers, id: false do |t|
      t.string :customer_id, primary_key: true
      t.bigint :contact_number, null: false

      t.timestamps
    end
  end
end
