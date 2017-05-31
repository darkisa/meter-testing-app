class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :get_dropdown_variables

  def get_dropdown_variables
    @protocols = Protocol.all
  end

end
