class User < ActiveRecord::Base

  has_many :bids
  has_many :comments
end
