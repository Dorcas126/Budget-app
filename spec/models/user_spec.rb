require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'dodo', email: 'dodo@gmail.com', password: '1234567') }

  before { subject.save }

  context 'Testing validations' do
    it 'Validation should be successful' do
      expect(subject).to be_valid
    end

    it 'User should have a name' do
      subject.name
      expect(subject).to be_valid
    end

    it 'User should have an email' do
      subject.email
      expect(subject).to be_valid
    end

    it 'User should have a password' do
      subject.password
      expect(subject).to be_valid
    end
  end

  context 'Testing associations' do
    it 'User should have many recipes items' do
      subject = User.reflect_on_association(:categories)
      expect(subject.macro).to eq(:has_many)
    end
  end
end
