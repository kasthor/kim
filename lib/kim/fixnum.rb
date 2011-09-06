class Fixnum
  def sign 
    return 1 if self == 0
    self / self.abs
  end

  def positive?
    sign == 1
  end

  def negative?
    sign == -1
  end
end
