class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures, id:false do |t|
      t.string :picture_id, primary_key: true
      t.string :picture_name, null: false
      t.string :image_id, null: false
      t.string :image_type, null: false
      # t.references :image, polymorphic: true

      t.timestamps
    end
  end
end
