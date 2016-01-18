class AddOtherReferencesToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :other_references, :string
  end
end
