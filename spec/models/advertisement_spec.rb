require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advert) { Advertisement.create!(title: "New Advertisement", body: "New Advertisement Body", price: 500) }
  
  describe "attributes" do
    it "has title, body, and price attributes" do
      expect(advert).to have_attributes(title: "New Advertisement", body: "New Advertisement Body", price: 500)
    end
  end
end
