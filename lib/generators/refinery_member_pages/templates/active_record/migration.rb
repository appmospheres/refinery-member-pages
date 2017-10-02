class AddMembersOnlyToRefineryPages < ActiveRecord::Migration[4.2]
  def change
    add_column :refinery_pages, :members_only, :boolean, default: false
  end
end
