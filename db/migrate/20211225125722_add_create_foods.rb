# frozen_string_literal: true

class AddCreateFoods < ActiveRecord::Migration[6.1]
  def change
    add_column :foods, :image, :string
  end
end
