class AddClubMemberRef < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :club_members, :users, column: :user_id, primary_key: :user_id, on_delete: :cascade, on_update: :cascade
    add_foreign_key :club_members, :clubs, column: :club_id, primary_key: :club_id, on_delete: :cascade, on_update: :cascade
  end
end
