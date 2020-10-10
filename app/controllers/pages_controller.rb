class PagesController < ApplicationController
  def home
    @devices = Device.all
  end

  def toggle_led
    WebConnectedLed.toggle
  end
end
