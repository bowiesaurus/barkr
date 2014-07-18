require 'rails_helper'

RSpec.describe Owner, :type => :model do

describe Owner do
  describe "#password" do
    it { should have_valid(:password).when("abcd1234", "aBc#&eL!") }
    it { should_not have_valid(:password).when("abcd123," nil, "") }

end
