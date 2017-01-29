class CreateClubMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :club_members, id: false do |t|
      t.string :club_id
      t.string :user_id

      t.timestamps
    end
  end
end
