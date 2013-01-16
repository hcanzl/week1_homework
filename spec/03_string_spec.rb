
describe "Strings" do
  
  context "created with double quotes" do
    
    it "are valid" do
      "Ruby Course".should eq 'Ruby Course'
    end
    
    it "are of class String" do
      "Ruby Course".should be_a String
    end
    
    it "can contain bare single-quote (') characters" do
      "Ana's".should eq 'Ana\'s'
    end
    
    it "allow the escape of double quote (\") characters" do
      "Ruby \" Course".should eq 'Ruby " Course'
    end
    
    it "allow interpolation (Ruby code within the string)" do
      name = 'Joe'
      "My name is #{name}".should eq "My name is Joe"
    end
    
    it "replace \t with a tab character" do
      "Ruby\tCourse".should_not eq 'Ruby\tCourse'
    end

    it "ADD AN EXAMPLE THAT TESTS A DIFFERENT ESCAPE SEQUENCE" do
      "Ruby\sCourse".should eq 'Ruby Course'
    end

    it "replaceS special characters when values are specified at the end via '% [value]'" do
      price = 2
      test_string = "The cost is: %d" % [price]
      test_string.should eq 'The cost is: 2'
    end
    
  end
  
  context "created with single quotes" do
    
    it "are valid" do
      'Alfred E. Newman'.should eq "Alfred E. Newman"
    end
    
    it "are of class String" do
      'Alfred E. Newman'.should be_a String
    end
    
    it "allow double-quote (\") characters" do
      'Alfred " Newman'.should eq 'Alfred " Newman'
    end

    it "allow the escape of single quote (') characters" do
      'Alfred \' Newman'.should eq "Alfred ' Newman" 
    end
    
    it "does not interpolate Ruby code" do
      name = 'Joe'
      'My name is #{name}'.should eq 'My name is #{name}'
    end
    
    it "does not escape newline characters" do
      'Alfred\nNewman'.should_not eq "Alfred\nNewman"
    end
    
  end

  context "created with Q sequence" do

    it "supports arbitrary delimiters and behave like a double quoted string" do
      %Q@<span style='color:blue'>"1 + 1 = #{1 + 1}"</span>@.should eq '<span style=\'color:blue\'>"1 + 1 = 2"</span>'
    end

    it "can omit the Q and just use %{}" do
      "<span style='color:blue'>\"1 + 1 = #{1 + 1}\"</span>".should eq '<span style=\'color:blue\'>"1 + 1 = 2"</span>'
    end

    it "created with the pattern %q supports arbitrary delimiters and behave like a single quoted string" do
       %q@<span style='color:blue'>"1 + 1 = #{1 + 1}"</span>@.should eq '<span style=\'color:blue\'>"1 + 1 = #{1 + 1}"</span>'
    end

  end

end