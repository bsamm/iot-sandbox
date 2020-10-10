class PagesController < ApplicationController
  def home
    @devices = Device.all
    @led_status = WebConnectedLed.status
  end

  def toggle_led
    WebConnectedLed.toggle
    redirect_to root_path
  end
end
