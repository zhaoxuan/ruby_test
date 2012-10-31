require 'learn_rspec'

describe Bowling, "#score" do
  
  it "return 0 for all" do
    b = Bowling.new
    b.hit('')
    b.score.should eq(0)
  end

end