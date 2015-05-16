class Project < ActiveRecord::Base
  belongs_to :team
  has_one :project_type
end
