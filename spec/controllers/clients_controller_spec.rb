
require "rails_helper"

RSpec.describe ClientsController, :type => :controller do

  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
   describe "GET #new" do
    it "responds successfuly HTTP 200 status code" do
      get :new, format: :html
      response.status.should eq(200)
    end
  end
    
  end
end
  
  
    
    
 

