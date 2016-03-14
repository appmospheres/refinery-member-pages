Refinery::Admin::PagesController.class_eval do
  private

  def permitted_page_params
    [:browser_title, :draft, :link_url, :menu_title, :meta_description,
      :parent_id, :skip_to_first_child, :show_in_menu, :title, :view_template,
      :members_only, :layout_template, :custom_slug,
      parts_attributes: [:id, :title, :slug, :body, :position]]
  end
end
