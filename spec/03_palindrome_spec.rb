require "spec_helper"
require "03_palindrome"

describe "palindrome" do
  it "returns false if a word is not a palindrome" do
    expect(palindrome?("dude")).to be false
  end

  it "returns true if a word is a palindrome" do
    expect(palindrome?("racecar")).to be true
  end
end
