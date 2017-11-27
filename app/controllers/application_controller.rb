class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def html_request?
  	request.format.json?
  end
end
