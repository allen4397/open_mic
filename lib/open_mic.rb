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

  def welcome(performer)
    @performers << performer
  end

  def repeated_jokes?
    joke_ids = []
    performers.each do |performer|
      performer.jokes.each do |joke|
        joke_ids << joke.id
      end
    end
    joke_ids.flatten!
    if joke_ids.uniq == joke_ids
      false
    else
      true
    end
  end
end
