class NextAction < ActiveRecord::Base
  attr_accessible :due, :name, :sort, :state, :project_id
  belongs_to :project, :counter_cache => true

  validates_presence_of :name

  state_machine :state, :initial => :current do 
  	event :complete do
  		transition :current => :completed
  	end

  	event :cancel do
  		transition :current => :canceled
  	end
  end
end
