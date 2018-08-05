require "rails_helper"

describe Travel, type: :model do
  let(:user)    { User.new(first_name: "Ada", last_name: "Kucinska") }

  describe "validations" do
    
    context "when user, and city_name are provided" do
      it "is valid" do
        travel = Travel.new(user: user, travel_date: "12/01/2017", city_name: "London")
        expect(travel.valid?).to eq(true)
      end
    end

    context "when user dosen't exist" do
      it "is invalid" do
        travel = Travel.new(travel_date: "12/01/2017", city_name: "London")
        expect(travel.invalid?).to eq(true)
      end
    end

    context "when city_name isn't provided" do
      it "is invalid" do
        travel = Travel.new(user: user, travel_date: "12/01/2017")
        expect(travel.invalid?).to eq(true)
      end
    end

    context "when travel_date isn't provided" do
      it "is invalid" do
        travel = Travel.new(user: user, city_name: "London")
        expect(travel.invalid?).to eq(true)
      end
    end

  end
end