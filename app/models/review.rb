class Review < ApplicationRecord
  validates :author,  presence: true
  validates :content,  presence: true
  belongs_to :cities
  has_one :author, :content

  scope :search, -> (author) {where("author like ?", "#{author}")}
end