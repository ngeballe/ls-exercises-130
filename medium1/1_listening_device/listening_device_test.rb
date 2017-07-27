require 'minitest/autorun'
require_relative 'listening_device'

class ListeningDeviceTest < Minitest::Test
  def test_record_and_play
    listener = Device.new
    listener.listen { 'Hello World!' }
    listener.listen
    listener.play
  end
end
