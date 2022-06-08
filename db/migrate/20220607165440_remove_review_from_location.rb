class RemoveReviewFromLocation < ActiveRecord::Migration[5.2]
  def change
    remove_column(:locations, :review)
  end
end
