class Review < ApplicationRecord
  validates :author,  presence: true
  validates :content,  presence: true
  belongs_to :location

  scope :search, -> (author) {where("author like ?", "#{author}")}
end