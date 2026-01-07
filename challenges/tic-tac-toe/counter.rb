class Counter
  def initialize(type, x_position, y_position)
    @type = type
    @x_position = x_position
    @y_position = y_position
  end
  def type?()
    return @type
  end
  def x_pos?()
    return @x_position
  end
  def y_pos?()
    return @y_position
  end
end