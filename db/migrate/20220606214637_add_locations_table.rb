class AddLocationsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.column :city, :string
      t.column :review, :string
    end
  end
end
