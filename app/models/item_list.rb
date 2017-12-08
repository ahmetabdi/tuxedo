class ItemList < ApplicationRecord
  belongs_to :contract
  belongs_to :item
end
