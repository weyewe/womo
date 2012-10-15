class HomeController < ApplicationController
  skip_before_filter :authenticate_user!, :only => [:index]
  def index
    @projects = Project.where(:is_published => true ).order("first_publication_datetime DESC")
  end
  
  def dashboard
    redirect_to deduce_after_sign_in_url
  end
  
end
