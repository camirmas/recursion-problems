require 'spec_helper'
require '02_fibonacci'

describe "fibonacci" do
  it "returns the nth fibonacci" do
    expect(fibonacci(5)).to be == 5
  end

  it "returns the nth fibonacci" do
    expect(fibonacci(6)).to be == 8
  end

  it "returns the nth fibonacci" do
    expect(fibonacci(30)).to be == 832040
  end
end
