require 'rails_helper'

RSpec.describe UsersController, type: :controller do
	context "GET#index" do 
    it "should return success response" do
      get :index
      expect(response.successful?).to eq(true)
    end
  end
end
