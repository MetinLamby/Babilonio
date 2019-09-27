class AddPriceToGarden < ActiveRecord::Migration[6.0]
  def change
    add_column :gardens, :price, :string
  end
end
