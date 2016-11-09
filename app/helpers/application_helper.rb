module ApplicationHelper
  #app/helpers/application_helper.rb
def resource_name
  :user
end

def resource
  @resource ||= User.new
end

def devise_mapping
  @devise_mapping ||= Devise.mappings[:user]
end
end
