class AddLocationIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column(:reviews, :location_id, :integer)
  end
end
