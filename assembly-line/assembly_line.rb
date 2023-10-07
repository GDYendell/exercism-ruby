class AssemblyLine
  BASE_CARS_PER_HOUR = 221

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    case @speed
      when 1..4 then BASE_CARS_PER_HOUR * @speed * 1.0
      when 5..8 then BASE_CARS_PER_HOUR * @speed * 0.9
      when 9 then BASE_CARS_PER_HOUR * @speed * 0.8
      when 10 then BASE_CARS_PER_HOUR * @speed * 0.77
      else 0.0
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor.to_i
  end
end
