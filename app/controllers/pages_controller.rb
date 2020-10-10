class PagesController < ApplicationController
  def home
    @devices = Device.all
  end
end
