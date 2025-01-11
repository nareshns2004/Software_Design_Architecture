# This is the Speed class, it contains the speed value and the unit
class Speed
  include Comparable
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def unit
    raise NotImplementedError,
          "#{self.class} has not implemented method '#{__method__}'"
  end

  # We raise an error if we try to compare speeds with different units
  def <=>(other)
    raise 'The speeds have different units' if unit != other.unit

    value <=> other.value
  end
end

# This is the class that is most used in the internal system.
class KilometersSpeed < Speed
  def unit
    'km/h'
  end
end

# This is the type of data you will receive from the external API
class MilesSpeed < Speed
  def unit
    'mi/h'
  end
end

# This class checks if the speed is above or bellow the maximum limit
class KilometersSpeedLimit
  MAX_LIMIT = KilometersSpeed.new(100)

  def self.speeding?(speed)
    if speed > MAX_LIMIT
      puts "(#{speed.value}#{speed.unit}) You are speeding"
    else
      puts "(#{speed.value}#{speed.unit}) You are bellow the max limit"
    end
  end
end

# This is the adaptor that converts the speed from miles per hour to kilometers
# per hour
class KilometersAdaptor < MilesSpeed
  def initialize(speed)
    @value = speed.value * 1.61
  end

  def unit
    'km/h'
  end
end

# This is an example of usage in a real application. These are the objects you
# would have inside your application.
slow_km_speed = KilometersSpeed.new(90)
fast_km_speed = KilometersSpeed.new(110)

KilometersSpeedLimit.speeding?(slow_km_speed)
KilometersSpeedLimit.speeding?(fast_km_speed)

# These would be the objects you generate from the data you received from the
# external API.
slow_mi_speed = MilesSpeed.new(50)
fast_mi_speed = MilesSpeed.new(80)

slow_mi_adaptor = KilometersAdaptor.new(slow_mi_speed)
fast_mi_adaptor = KilometersAdaptor.new(fast_mi_speed)

KilometersSpeedLimit.speeding?(slow_mi_adaptor)
KilometersSpeedLimit.speeding?(fast_mi_adaptor)
