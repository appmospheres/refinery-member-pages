Refinery::PagesController.class_eval do
  before_filter :check_members_only

  protected
  def check_members_only
    if page.members_only? && !signed_in?
      flash[:notice] = t('login_required', scope: 'notice')
      redirect_to root_url
      false
    end
    true
  end
end
