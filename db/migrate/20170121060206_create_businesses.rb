class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :business_key
      t.string :location
      t.text :description
      t.string :business_type

      t.timestamps
    end
  end
end
