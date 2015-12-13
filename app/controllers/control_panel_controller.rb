class ControlPanelController < ApplicationController
  before_filter :require_login

  def require_login
    unless user_signed_in?
      flash[:error] =  'У вас недостаточно прав для доступа в этот раздел сайта'
      redirect_to new_user_session_path
    end
  end

  def index

  end

end
