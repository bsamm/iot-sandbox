class WebConnectedLed
  class << self
    def toggle
      if status == 0
        switch('on')
      else
        switch('off')
      end
    end

    def device
      Particle.device(name)
    end

    def name
      'photon-0002'
    end

    def status
      device.variable('led')
    end

    def switch(state)
      device.function('led', state)
    end
  end
end
