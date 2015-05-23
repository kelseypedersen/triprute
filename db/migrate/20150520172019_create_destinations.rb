class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :city
      t.string :country
      t.text :highlights
      t.string :lodging
      t.string :transportation
      t.integer :days

      t.references :trip

      t.timestamps
    end
  end
end
