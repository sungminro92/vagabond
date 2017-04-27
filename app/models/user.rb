class User < ApplicationRecord
  has_many :posts, through: :cities
end
