class HomeController < ApplicationController
  def index
    if user_signed_in? then
      @login_user_name = current_user.email;
    else
      @login_user_name="Login";
    end
  end

  def about
  end
end
