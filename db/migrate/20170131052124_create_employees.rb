class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees, id: false do |t|
      t.string :employee_id, primary_key: true
      t.string :designation, null: false
      t.decimal :salary, precision: 12, scale: 2, default: 0.0, null: false

      t.timestamps
    end
  end
end
