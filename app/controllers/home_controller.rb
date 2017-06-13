class HomeController < ApplicationController
  def index
    flash[:notice] = 'Notification........'
  end
end
