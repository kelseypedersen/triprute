class CreateWishlist < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
        t.integer :value
        t.belongs_to :trip
  end
end
