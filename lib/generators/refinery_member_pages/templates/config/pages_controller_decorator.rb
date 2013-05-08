Refinery::PagesController.class_eval do

  before_filter :check_members_only

  protected
  def check_members_only
    if page.members_only? && !current_refinery_user
      flash[:notice] = t('login_required', :scope => 'notice')
      redirect_to root_url
      false
    end
    true
  end

end
