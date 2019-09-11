class AddTypeToGardens < ActiveRecord::Migration[5.2]
  def change
    add_column :gardens, :type, :string
  end
end
