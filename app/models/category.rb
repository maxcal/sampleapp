class Category < ActiveRecord::Base

  has_and_belongs_to_many :books
  validates_uniqueness_of :name
end
