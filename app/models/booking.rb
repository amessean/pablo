class Booking < ApplicationRecord
  belongs_to :users, optional: true
  has_many :reviews, dependent: :destroy
end
