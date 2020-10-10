class WebConnectedLed
  class << self
    def toggle
      device.function('led', 'off')
    end

    def device
      Particle.device('photon-0002')
    end
  end
end
