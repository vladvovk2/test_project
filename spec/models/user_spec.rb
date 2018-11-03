require 'rails_helper'

RSpec.describe User, type: :model do
  context "validation tests" do
    it "ensure first_name is present" do
      user = User.new(first_name: "Test name")
      expect(user.valid?).to eq(false)
    end

    it "ensure second_name is present" do
      user = User.new(second_name: "Test second_name")
      expect(user.valid?).to eq(false)
    end

    it "ensure address is present" do
      user = User.new(address: "Test address")
      expect(user.valid?).to eq(false)
    end

    it "ensure birthday is present" do
      user = User.new(birthday: "Test birthday")
      expect(user.valid?).to eq(false)
    end
  end
end
