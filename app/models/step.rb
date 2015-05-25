class Step < ActiveRecord::Base
  has_many :messages, as: :discussable
  accepts_nested_attributes_for :messages
end
