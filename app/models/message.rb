class Message < ActiveRecord::Base
  belongs_to :discussable, polymorphic: true
end
