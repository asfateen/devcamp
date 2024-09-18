require_relative 'concerns/devise_whitelist'
class ApplicationController < ActionController::Base
  include DeviseWhiteList
end
