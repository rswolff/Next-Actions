class NextAction < ActiveRecord::Base
  attr_accessible :due, :name, :sort, :state, :project_id
  belongs_to :project

  validates_presence_of :name
end
