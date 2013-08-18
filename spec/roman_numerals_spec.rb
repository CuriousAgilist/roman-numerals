#roman_numerals_spec.rb
#to run enter "rspec -fd" from the project directory (make sure rvm has rspec installed)
require File.join(File.dirname(__FILE__), '..',  'lib', 'roman_numerals')

describe "Roman Numerals" do
  it "give back V for 5" do
    rn = RomanNumerals.new
    rn.getRN(5).should == "V"
  end
  it "give back XLVII for 47" do
    rn = RomanNumerals.new
    rn.getRN(47).should == "XLVII"
  end
  it "give back XCIX for 99" do
    rn = RomanNumerals.new
    rn.getRN(99).should == "XCIX"
  end
  it "give back MCMXCIX for 1999" do
    rn = RomanNumerals.new
    rn.getRN(1999).should == "MCMXCIX"
  end
  it "give back MMVIII for 2008" do
    rn = RomanNumerals.new
    rn.getRN(2008).should == "MMVIII"
  end
end
