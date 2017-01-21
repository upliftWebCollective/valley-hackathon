class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.integer :user_id
      t.integer :point_of_interest_id
      t.string :photo_url

      t.timestamps
    end
  end
end
