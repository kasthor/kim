describe Fixnum do
  it "should return the right sign" do
    -123.sign.should == -1
    123.sign.should == 1
  end
end
