class AddReviewsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column :content, :string
      t.column :author, :string
    end
  end
end
