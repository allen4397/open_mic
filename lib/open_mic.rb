require './lib/user'
require './lib/joke'
require 'pry'

class OpenMic
  attr_reader :location,
              :date,
              :performers

  def initialize(info)
    @location = info[:location]
    @date = info[:date]
    @performers = []
  end
end
