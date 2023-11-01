# frozen_string_literal: true

# db/migrate/20231029202045_create_expenses.rb
class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
