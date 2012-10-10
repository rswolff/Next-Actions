class CreateNextActions < ActiveRecord::Migration
  def change
    create_table :next_actions do |t|
      t.string :name
      t.date :due
      t.integer :sort
      t.string :state
      t.integer :project_id
      t.timestamps
    end
  end
end
