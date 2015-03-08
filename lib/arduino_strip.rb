require 'arduino_strip/version'
require 'serialport'
require 'color'

module ArduinoStrip

  class Strip

    attr_accessor :device, :baud_rate, :data_bits, :stop_bits, :parity, :connected

    def initialize(device = '/dev/tty.usbmodem1421')
      @device = device
      @baud_rate = 57600
      @data_bits = 8
      @stop_bits = 1
      @parity = SerialPort::NONE
      @connected = false
    end

    def connect
      @serial = SerialPort.new(@device, @baud_rate, @data_bits, @stop_bits, @parity)
      @connected = true
    end

    def set_color(position , color)
      @serial.write "#{position},#{color.r},#{color.g},#{color.b}\n" if @connected
    end

    def show
      @serial.write "-1,0,0,0\n" if @connected
    end

    def hide
      @serial.write "-2,0,0,0\n" if @connected
    end

    def blank
      @serial.write "-3,0,0,0\n" if @connected
      @serial.write "-1,0,0,0\n" if @connected
    end

  end

end
