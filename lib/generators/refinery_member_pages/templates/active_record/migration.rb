class AddMembersOnlyToRefineryPages < ActiveRecord::Migration
  def change
    add_column :refinery_pages, :members_only, :boolean, default: false
  end
end
