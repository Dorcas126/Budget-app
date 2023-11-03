require 'rails_helper'

RSpec.describe 'Expenses', type: :system, js: true do
  describe 'Expenses page' do
    before(:each) do
      @user = User.create(name: 'dodo', email: 'dodo@gmail.com', password: '1234567')
      sign_in @user

      @category = Category.create(author: @user, name: 'Shoes', icon: 'https://cdn.pixabay.com/photo/2013/07/12/18/20/shoes-153310__340.png')
      @expense = Expense.create(author: @user, name: 'vans', amount: 100)
      @category_expense = CategoryExpense.create(category: @category, expense: @expense)
      visit category_expenses_path(@category)
    end
  end
end
