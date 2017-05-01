class Post < ApplicationRecord
  belongs_to :city
  belongs_to :user
  has_many :comments
  # validates_length_of :title, :minimum=>1, :message=>"put something here"
  # validates_length_of :title, :maximum=>200, :message=>"less than 200 characters please"
  validates :title, length: { within: 1..200 }
  validates :content, presence: true
end
