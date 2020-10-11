class Device
  class << self
    def all_connected
      Particle.devices
        .select { |d| d.connected? }
        .each   { |d| d
          .attributes
          .merge!(extra_attributes(d.name))
        }
    end

    def extra_attributes(name)
      {
        :led_status => WebConnectedLed.new(name)&.status
      }
    end
  end
end
