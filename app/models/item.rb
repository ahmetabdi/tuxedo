class Item < ApplicationRecord
  belongs_to :category

  monetize :default_price_pennies
end
