require 'rails_helper'

RSpec.describe User, :type => :model do

  it "validates email address" do
    user = FactoryGirl.build(:user)

    user.email = "blah"
    expect(user.valid?).to eq false

    user.email = "test@example.com"
    expect(user.valid?).to eq true
  end

  pending "add some examples to (or delete) #{__FILE__}"
end
