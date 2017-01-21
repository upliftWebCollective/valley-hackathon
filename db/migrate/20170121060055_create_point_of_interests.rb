class CreatePointOfInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :point_of_interests do |t|
      t.string :name
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
