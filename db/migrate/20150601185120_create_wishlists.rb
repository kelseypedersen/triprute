class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|

      t.references :user

      t.timestamps
    end
  end
end