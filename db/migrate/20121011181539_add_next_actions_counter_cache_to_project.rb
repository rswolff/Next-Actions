class AddNextActionsCounterCacheToProject < ActiveRecord::Migration
  def change
    add_column :projects, :next_actions_count, :integer
  end
end
