class AddRowOrderToThings < ActiveRecord::Migration
  def change
    add_column :things, :row_order, :integer
  end
end
