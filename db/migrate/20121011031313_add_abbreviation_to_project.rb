class AddAbbreviationToProject < ActiveRecord::Migration
  def change
    add_column :projects, :abbreviation, :string
  end
end
