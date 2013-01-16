describe 'Everything is an Object!' do

  it "Objects have methods" do
    'two'.methods.should include :upcase
  end

  it "Objects have a class" do
    'two'.class.should eq String
  end

  it "Objects can be sent messages" do
    'two'.send(:upcase).should eq 'TWO'
    # that code sends the message 'upcase' to the string 'two'
    # same result as: 'two'.upcase
  end

  it 'Strings are objects' do
    "Two".should be_a Object
  end

  it 'Numbers are objects' do
    1.should be_a Object
  end

  it 'Hashes are objects' do
    rate = Hash.new
    rate['Jones'] = 25
    rate['Paulson'] = 35
    rate.should be_a Object
  end

  it 'Arrays are objects' do
    [1, 2, 3].should be_a Object
  end

  it 'Expressions evaluate to objects' do
    (-5).abs.should be_a Object
  end

  it 'Symbols are objects' do
    :student.should be_a Object
  end

  it 'Classes are objects' do
    Array.should be_a Object
  end

  it 'ADD ANY EXAMPLE THAT EVALUATES TO AN OBJECT' do
    (8 % 2).should be_a Object
  end

end