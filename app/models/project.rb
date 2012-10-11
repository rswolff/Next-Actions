class Project < ActiveRecord::Base
  attr_accessible :due, :name, :sort, :state, :abbreviation
  has_many :next_actions

  validates_presence_of :name, :abbreviation

  state_machine :state, :initial => :current do 
  	event :complete do
  		transition :current => :completed
  	end

  	event :cancel do
  		transition :current => :canceled
  	end
  end

  def current_next_actions
    next_actions.where(state: 'current')
  end
end
