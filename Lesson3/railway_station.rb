class Station
  attr_reader :title, :trains
  
  def initialize(title)
    @title = title
    @trains = []
  end

  def arrival(train)
    puts "Прибытие поезда номер #{@train_number} на станцию #{title}"
    trains << train
  end

  def departure(train)
    puts "Отбытие поезда номер #{@train_number} со станции #{title}"
    trains.delete(train)
  end

  def type_trains(type = nil)
     @trains.select { |train| train.train_type == type }
  end
end

class Route
  attr_reader :stations

  def initialize(start_station, end_station)
    @stations = [start_station, end_station]
  end

  def add_station(station)
    stations.insert(-2, station)
  end

  def delete_station(station)
    stations.delete(station)
  end

  def show_route
    @stations.each.with_index { |station, station_index| puts "#{station_index}. #{station.title}" }
  end
end

class Train
  attr_reader :railcar, :train_type
  attr_accessor :current_station

  def initialize(train_number, train_type, railcar)
    @train_number = train_number
    @train_type = train_type
    @railcar = railcar
    @speed = 0
    @route = nil
  end

  def add_speed(plus_speed)
    @speed += plus_speed
  end

  def current_speed
    @speed
  end

  def stop
    @speed = 0
  end

  def add_railcar
    @railcar += 1 if @speed == 0
  end

  def remove_railcar
    @railcar -= 1 if @speed == 0
  end

  def add_route(current_route)
    @route = current_route
    @route.stations.first.arrival(self)
  end

  def current_station
    @route.stations.find{ |station| station.trains.include?(self) }
  end

  def current_station_index
    puts @route.stations.index(current_station)#
    @route.stations.index(current_station)
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
      next_station.arrival(self)
      departure_station.departure(self)
  end

  def go_prev
    return unless prev_station
      departure_station = current_station
      prev_station.arrival(self)
      departure_station.departure(self)
  end
end
