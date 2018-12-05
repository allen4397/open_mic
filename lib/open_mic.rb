require './lib/user'
require './lib/joke'

class OpenMic
  attr_reader :location

  def initialize(info)
    @location = info[:location]
  end
end
