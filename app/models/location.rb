class Location < ApplicationRecord
  has_many :reviews
  accepts_nested_attributes_for :reviews
end


# class Post < ApplicationRecord
#   has_many :comments, -> { order(created_at: :desc)}, inverse_of: :post, dependent: :destroy
#   scope :with_comments, ->(include) { includes(:comments) if include.present? && include.to_bool }
#  end