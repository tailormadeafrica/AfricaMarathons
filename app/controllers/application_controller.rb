class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_inquiry
  layout :determine_layout

  def determine_layout
    if home_page?
      "home"
    elsif controller_name == "accommodations"
      "accommodations"
    elsif controller_name == "locations"
      "locations"
    elsif controller_name == "activities"
      "activities"
    elsif controller_name == "posts"
      "blogs"
    else
      "application"
    end
  end

  def get_inquiry
    if session[:inquiry].present?
      @inquiry = session[:inquiry]
      session[:inquiry] = nil
    end
  end
end
