module ApplicationHelper
  
  ACTIVE = "current"
  
  def pic_url( pic ) 
    if picture_url.nil? or picture_url.length == 0 
      return  'upload_images_prompt.jpg'
    else
      return picture_url 
    end
  end
  
  
=begin
  Process Navigation related activity
=end  


  def get_process_nav( symbol, params)

    if symbol == :admin
      return create_process_nav(ADMIN_PROCESS_LIST, params )
    end

    if symbol == :vendor 
      return create_process_nav(VENDOR_PROCESS_LIST, params )
    end

    if symbol == :basic
      return create_process_nav(BASIC_PROCESS_LIST, params )
    end
    
    if symbol == :setup
      return create_process_nav(SETUP_PROCESS_LIST, params )
    end 
  end
  
  def create_process_nav( process_list, params )
      #   
      # <!-- .widget -->
      # <div class="widget">
      #   <h3 class="title">VENDOR</h3>
      # 
      #   <ul class="categories">
      #     <li>
      #       <%= link_to "Portfolio", projects_url %> 
      #     </li>
      #     <li class="current"><a href="./team.html">Collaboration</a></li>
      #     <li><a href="./testimonials.html">Testimonial</a></li>
      #   </ul>
      # </div><!-- /.widget -->
      # 
    
     result = ""
     result << "<div class='widget''>"
     result << "<h3 class='title'>"  + 
                 process_list[:header_title] + 
                 "</h3>"         

     result << "<ul class='categories'>" 
     
     process_list[:processes].each do |process|
       result << create_process_entry( process, params )
     end

     result << "</ul>"
     result << "</div>"

     return result
   end
   
   
  
  
  
  def create_process_entry( process, params )
    is_active = is_process_active?( process[:conditions], params)
    
    # <li class="current"><a href="./team.html">Collaboration</a></li>
    
    process_entry = ""
    process_entry << "<li class='#{is_active}'>" + 
                      link_to( process[:title] , extract_url( process[:destination_link] )    ) + 
                      "</li>"
    
    return process_entry
  end
  
  def is_process_active?( active_conditions, params  )
    active_conditions.each do |condition|
      if condition[:controller] == params[:controller] &&
        condition[:action] == params[:action]
        return ACTIVE
      end

    end

    return ""
  end
  
  def extract_url( some_url )
    if some_url == '#'
      return '#'
    end
    
    eval( some_url ) 
  end
  
=begin
  PROCESS LIST 
=end
  
  
  ADMIN_PROCESS_LIST = {
    :header_title => "Admin",
    :processes => [
      {
        :title =>  "Hot Approval",
        :destination_link => 'root_url',
        :conditions => [
          {
            :controller => '',
            :action => ''
          } 
        ]
      } 
    ]
  }
  
  VENDOR_PROCESS_LIST = {
    :header_title => "Vendor",
    :processes => [
      {
        :title =>  "Portfolio",
        :destination_link => 'root_url',
        :conditions => [
          {
            :controller => 'projects',
            :action => 'index'
          } 
        ]
      },
      {
        :title =>  "Collaboration",
        :destination_link => 'root_url',
        :conditions => [
          {
            :controller => '',
            :action => ''
          } 
        ]
      },
      {
        :title =>  "Testimonial",
        :destination_link => 'root_url',
        :conditions => [
          {
            :controller => '',
            :action => ''
          } 
        ]
      },
      {
        :title =>  "Promo",
        :destination_link => 'root_url',
        :conditions => [
          {
            :controller => '',
            :action => ''
          } 
        ]
      },
      {
        :title =>  "Company Setup",
        :destination_link => 'root_url',
        :conditions => [
          {
            :controller => '',
            :action => ''
          } 
        ]
      }
    ]
  }
  
  BASIC_PROCESS_LIST = {
    :header_title => "Client",
    :processes => [
      {
        :title =>  "Bookmarks",
        :destination_link => 'root_url',
        :conditions => [
          {
            :controller => '',
            :action => ''
          } 
        ]
      } 
    ]
  }
  
  
  SETUP_PROCESS_LIST = {
    :header_title => "Setup",
    :processes => [
      {
        :title =>  "Personal Info",
        :destination_link => 'root_url',
        :conditions => [
          {
            :controller => '',
            :action => ''
          } 
        ]
      },
      {
        :title =>  "Profile Pic",
        :destination_link => 'root_url',
        :conditions => [
          {
            :controller => '',
            :action => ''
          } 
        ]
      },
      {
        :title =>  "Email",
        :destination_link => 'root_url',
        :conditions => [
          {
            :controller => '',
            :action => ''
          } 
        ]
      },
      {
        :title =>  "Password",
        :destination_link => 'root_url',
        :conditions => [
          {
            :controller => '',
            :action => ''
          } 
        ]
      } 
    ]
  }
  

end
