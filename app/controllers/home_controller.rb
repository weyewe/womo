class HomeController < ApplicationController
  skip_before_filter :authenticate_user!, :only => [:index]
  def index
  end
  
  def dashboard
    redirect_to deduce_after_sign_in_url
  end
  
end
