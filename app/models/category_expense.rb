# app/models/category.rb
class CategoryExpense < ApplicationRecord
  belongs_to :expense
  belongs_to :category
end
