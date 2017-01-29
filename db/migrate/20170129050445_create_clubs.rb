class CreateClubs < ActiveRecord::Migration[5.0]
  def change
    create_table :clubs, id: false do |t|
      t.string :club_id, primary_key: true
      t.string :club_name, null: false

      t.timestamps
    end
  end
end
