# app/models/expense.rb
class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :category_expenses, dependent: :destroy
  has_many :categories, through: :category_expenses, dependent: :destroy

  validates :name, presence: true, uniqueness: { scope: :author, message: 'Expenses exit' }
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
