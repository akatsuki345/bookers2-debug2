# frozen_string_literal: true

class AddRateToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :rate, :float
  end
end
