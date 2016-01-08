class PagesController < ApplicationController
  def index
    @registrations = Registration.new
  end
end