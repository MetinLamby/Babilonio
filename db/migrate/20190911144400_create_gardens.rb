class CreateGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|
      t.string :description
      t.string :title
      t.string :price
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
