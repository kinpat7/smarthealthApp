require 'date_today'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :datetoday
  def datetoday
    x = DateToday::Date.new
    @date = x.today.strftime('%H:%M | %d-%m-%Y')
  end
end
