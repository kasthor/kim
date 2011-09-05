class Fixnum
  def sign 
    self / self.abs
  end
end
