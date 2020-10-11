class WebConnectedLed
  def initialize(name)
    @name = name
  end

  def toggle
    if status == 0
      switch('on')
    else
      switch('off')
    end
  end

  def device
    Particle.device(@name)
  end

  def status
    device.variable('led')
  end

  def switch(state)
    device.function('led', state)
  end
end
