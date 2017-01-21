class AddBusinessCodeToPointOfInterests < ActiveRecord::Migration[5.0]
  def change
    add_column :point_of_interests, :business_code, :string
  end
end
