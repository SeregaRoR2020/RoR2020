class Train
  attr_reader :number, :carriage, :type, :route
  attr_accessor :current_station

  def initialize(number, type)
    @number = number
    @type = type
    @carriages = []
    @speed = 0
    @route = nil
  end

  def add_speed(speed_add)
    @speed += speed_add
  end

  def current_speed
    @speed
  end

  def stop
    @speed = 0
  end

  def add_carriage(carriage)
    @carriages << carriage if @speed == 0
  end

  def unhook_carriage
    @carriages.pop if @speed == 0
  end

  def add_route(route)
    @route = route
    @route.stations.first.take_train(self)
  end

  def current_station
    @route.stations.find { |station| station.trains.include?(self) }
  end

  def prev_station
    @route.stations[current_station_index - 1] if current_station != @route.stations.first
  end

  def next_station
    @route.stations[current_station_index + 1] if current_station != @route.stations.last
  end

  def go_next
    return unless next_station
    departure_station = current_station
    next_station.take_train(self)
    departure_station.send_train(self)
  end

  def go_prev
    return unless prev_station
    departure_station = current_station
    prev_station.take_train(self)
    departure_station.send_train(self)
  end

  private 

  def current_station_index #метод используется только классом для получения индекса
    @route.stations.index(current_station)
  end


end