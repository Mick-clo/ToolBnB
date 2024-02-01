class ChangePriceToFloatInTools < ActiveRecord::Migration[7.1]
  def change
    change_column :tools, :price, :float
  end
end
