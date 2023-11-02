require 'rails_helper'

RSpec.describe 'Categories', type: :system, js: true do
  describe 'categories page' do
    before(:each) do
      @user = User.create(name: 'dodo', email: 'dodow@gmail.com', password: '1234567')
      sign_in @user

      @category = Category.create(author: @user, name: 'Shoes', icon: 'https://cdn.pixabay.com/photo/2013/07/12/18/20/shoes-153310__340.png')
      visit categories_path
    end
  end
end
