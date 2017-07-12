class HomeController < ApplicationController
  def indexpage
    if user_signed_in?
      redirect_to polls_path
    else
      redirect_to new_user_session_path
    end
  end
end
