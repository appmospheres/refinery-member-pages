class AddMembersOnlyToRefineryPages < ActiveRecord::Migration[5.1]
  def change
    add_column :refinery_pages, :members_only, :boolean, default: false
  end
end
