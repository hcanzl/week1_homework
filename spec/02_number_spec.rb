require 'bigdecimal'

describe "Integers" do

  it "have methods (just like all objects)" do
    1.should respond_to :+
  end

  it "can use underscores, to be easy on the eyes" do
    1_000_000.should eq 1000000
  end

  it "can be added" do
    (1 + 2).should eq 3
  end

  it "can be subtracted" do
    (5 - 2).should eq 3
  end

  it "can be multiplied" do
    (5 * 2).should eq 10
  end

  it "support exponentiation" do
    (5 ** 2).should eq 25
  end

  it "support modulo" do
    (5 % 2).should eq 1
  end

  it "are usually of class Fixnum" do
    1.should be_a Fixnum
  end

  it "that are are very large are of class Bignum" do
    (123456789 ** 2).should be_a Bignum 
  end

  it "are returned from Integers calculations" do
    (5 * 2).should be_a Integer
  end

end

describe "Floats" do

  it "have their own class" do
    (1.0).should be_a Float
  end

  it "are returned when calculations include a Float" do
    (1.0 * 2).should be_a Float
  end

end

describe "Other Ruby classes" do
  it "ADD ANY EXAMPLE THAT TESTS A Rational, Complex OR BigDecimal value" do
    temp = BigDecimal('1')
    temp.should be_a BigDecimal
  end

end