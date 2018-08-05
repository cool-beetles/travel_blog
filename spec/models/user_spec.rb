require 'rails_helper'

describe User, type: :model do
  describe "validations" do
  	
    context "when first_name and last_name are provided" do
      it "is valid" do
        user = User.new(first_name: "Ada", last_name: "Kucinska")
        expect(user.valid?).to eq(true)
      end
    end

  	context "when first_name is shorter than 3 letters" do
      it "is invalid" do
        user = User.new(first_name: "Ad", last_name: "Kucinska")
        expect(user.invalid?).to eq(true)
      end
    end
  	
  	context "when last_name is shorter than 3 letters" do
      it "is invalid" do
        user = User.new(first_name: "Ada", last_name: "Ku")
        expect(user.invalid?).to eq(true)
      end
    end

    context "when first_name isn't provided" do
      it "is invalid" do
        user = User.new(last_name: "Kucinska")
        expect(user.invalid?).to eq(true)
      end
    end

    context "when last_name isn't provided" do
      it "is invalid" do
        user = User.new(first_name: "Ada")
        expect(user.invalid?).to eq(true)
      end
    end

  end
end