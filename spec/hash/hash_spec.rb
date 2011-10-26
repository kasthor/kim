describe "Hash Additions" do
  it "should add deep_merge method to Hash" do
    {}.should respond_to :deep_merge
  end
  it "should replace top most entries" do
    {:a=>{:b=>:c}}.deep_merge({:a=>{:b=>:d}}).should == {:a=>{:b=>:d}}
  end
  it "should merge top most hash" do
    {:a=>{:b=>:c}}.deep_merge({:a=>{:d=>:e}}).should == {:a=>{:b=>:c, :d => :e}}
  end

  it "should merge a key only exists in other" do
    {:a => {:aa => :c}}.deep_merge({:a=> {:ab => :c}, :b => {:ba => :c}}).should == {:a=> {:aa => :c, :ab => :c}, :b => {:ba => :c}}
  end

  it "should select keys from a hash, returning a new hash containing those keys" do
    {:a => 1, :b => 2, :c => 3, :d => 4}.select_keys(:a,:b).should == {:a => 1, :b => 2}
  end
end
