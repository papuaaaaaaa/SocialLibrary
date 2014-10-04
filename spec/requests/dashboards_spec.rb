require 'rails_helper'

RSpec.describe "Dashboards", :type => :request do
  describe "GET /dashboards" do
    it "works! (now write some real specs)" do
      get dashboards_path
      expect(response.status).to be(200)
    end
  end
end
