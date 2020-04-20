require_relative 'train'
require_relative 'route'
require_relative 'station'
require_relative 'train_passenger'
require_relative 'train_cargo'
require_relative 'carriage'
require_relative 'railway'

railway = Railway.new
railway.create
railway.start