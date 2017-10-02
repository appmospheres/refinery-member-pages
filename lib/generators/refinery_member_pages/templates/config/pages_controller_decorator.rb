Refinery::PagesController.class_eval do
  before_action :check_members_only

  protected
  def check_members_only
    # signed_in_method? must be defined in your application controller
    if page.members_only? && !signed_in_method?
      flash[:notice] = t('login_required', scope: 'notice')
      # login_member_path must be defined in your routes.rb
      # previous_url must be a hidden field in the login form of members
      redirect_to main_app.login_member_path(previous_url: params[:path])
      false
    end
    true
  end
end
