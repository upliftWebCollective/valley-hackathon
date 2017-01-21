class AddLatAndLongToPointOfInterests < ActiveRecord::Migration[5.0]
  def change
    add_column :point_of_interests, :latitude, :string
    add_column :point_of_interests, :longitude, :string
  end
end
