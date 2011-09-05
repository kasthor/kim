class Array
  def all_equal?
    self.all?{|item| item == self.first}
  end
end
