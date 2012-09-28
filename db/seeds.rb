admin_role = Role.create :name => USER_ROLE[:admin]
vendor_role = Role.create :name => USER_ROLE[:vendor]
basic_role = Role.create :name => USER_ROLE[:basic]

admin = User.create_main_user( :password => "willy1234", :password_confirmation => "willy1234", :email => "admin@gmail.com" )

mono = User.create_main_user( :password => "willy1234", :password_confirmation => "willy1234", :email => "mono@gmail.com" )