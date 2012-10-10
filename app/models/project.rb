class Project < ActiveRecord::Base
  attr_accessible :due, :name, :sort, :state
  has_many :next_actions

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
