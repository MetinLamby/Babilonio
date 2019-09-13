class DeleteGeocoderFromGardens < ActiveRecord::Migration[6.0]
  def change
    remove_column :gardens, :latitude
    remove_column :gardens, :longitude
    remove_column :gardens, :address
  end
end
