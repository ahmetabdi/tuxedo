class CreateItemLists < ActiveRecord::Migration[5.2]
  def change
    create_table :item_lists do |t|
      t.references :contract, foreign_key: true
      t.references :item, foreign_key: true
      t.monetize :price

      t.timestamps
    end
  end
end
