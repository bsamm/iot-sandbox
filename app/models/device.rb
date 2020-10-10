class Device
  class << self
    def all
      Particle.devices
    end

    def first
      all.first
    end
  end
end
