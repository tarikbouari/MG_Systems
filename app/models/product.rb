class Product < ApplicationRecord
    has_many :orders
    has_many :stocks
end
