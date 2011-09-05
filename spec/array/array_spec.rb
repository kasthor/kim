describe Array do
  it "should return the right response for all equal" do
    [ 1, 1, 1, 1 ].should be_all_equal
    [ 1, 2, 1, 1 ].should_not be_all_equal
  end

  it "should return all equal when empty?" do
    [].should be_all_equal
  end
end
