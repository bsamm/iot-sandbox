class PagesController < ApplicationController
  def home
    @devices = Device.all_connected
  end

  def toggle_led
    WebConnectedLed.new(params['device_name'])&.toggle
    redirect_to root_path
  end
end
