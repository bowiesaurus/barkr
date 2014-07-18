require 'rails_helper'

describe Owner do
  describe "#password" do
    it { should have_valid(:password).when("abcd1234", "aBc#&eL!") }
    it { should_not have_valid(:password).when("abcd123", nil, "") }
  end

  describe "#password_confirmation" do
    subject { FactoryGirl.build(:owner, password: "abcs1234") }
    it { should have_valid(:password_confirmation).when("abcs1234") }
    it { should_not have_valid(:password_confirmation).when("asdfas") }
  end

  describe "#email" do
    subject { FactoryGirl.create(:owner) }
    it { should have_valid(:email).when("puppy_power@gmail.com", "fluffernutter2000@yahoo.com")}
  end
end

