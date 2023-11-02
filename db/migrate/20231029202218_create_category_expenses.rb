# frozen_string_literal: true

# db/migrate/20231029202218_create_category_expenses.rb
class CreateCategoryExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :category_expenses do |t|
      t.references :expense, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
