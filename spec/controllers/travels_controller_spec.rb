require 'rails_helper'

RSpec.describe "Travels", type: :controller do
  let(:user)    { User.new(first_name: "Ada", last_name: "Kucinska") }
  let(:travel)  { Travel.new(user: user, travel_date: "12/01/2017", city_name: "London") }
 
  describe "GET travels#index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  context "when the current_user is logged out" do
    it "should redirect to the login page" do
    end
  end

  describe "GET travels#show" do
    it "should render travels#show template" do
    end
  end

  describe "GET travels#new" do
    it "should render travels#new template" do
    end
  end

  describe "POST travels#create" do
    context "with valid attributes" do
      it "should save the new travel in the database"
      it "should redirect to the travels#index page"
    end
  end  

  context "with invalid attributes" do
    it "should not save the new travel in the database"
    it "should render travels#new template"
  end

  describe "PUT travels#update" do
    it "should update an existing travel" do
    end
  end

  describe "DELETE travels#destroy" do
    it "should delete a travel" do
    end
  end

end

