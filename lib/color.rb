
module ArduinoStrip

  class Color

    COLORS = {
        yellow: [255,255,0],
        red: [255,0,0],
        blue: [0,0,255],
        green: [0,255,0],
        pink: [255,0,255]
    }

    attr_accessor :r, :g, :b

    def initialize(r = 0, g = 0, b = 0)
      @r = r
      @g = g
      @b = b
    end

    def self.by_name(name)
      if COLORS[name]
        Color.new(COLORS[name][0], COLORS[name][1], COLORS[name][2])
      else
        Color.new(0,0,0) #or should this be nil?
      end
    end

  end

end