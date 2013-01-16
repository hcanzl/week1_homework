describe "Symbols" do

  it "are not like strings, which can have duplicate content in multiple objects" do
    "only_one".object_id.should_not eq "only_one".object_id
  end

  it "only exist once" do
    ("only" + "one").to_sym.object_id.should eq :onlyone.object_id
  end

  it "are of class Symbol" do
    :onlyone.should be_a Symbol
  end
  
  it "are not the same as a string of the same characters" do
    :onlyone.should_not eq 'onlyone'
  end
  
  it "are convertable to strings" do
    :onlyone.to_s.should eq 'onlyone'
  end

  it "are convertable from a string" do
    'onlyone'.to_sym.should eq :onlyone
  end

  it "automatically converts to a string when interpolated" do
    "#{:onlyone}".should eq 'onlyone'
  end
  
end