class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :title
      t.string :category
      t.string :season
      t.text :comments
      t.binary :photo

      t.references :user
      t.references :wishlist

      t.timestamps
    end
  end
end
