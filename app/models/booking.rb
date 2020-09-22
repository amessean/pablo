class Booking < ApplicationRecord
  belongs_to :users
  has_many :reviews, dependent: :destroy
end
