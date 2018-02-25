class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_vegetable
    @current_vegetable = Vegetable.find(params[:id])
  end
end
