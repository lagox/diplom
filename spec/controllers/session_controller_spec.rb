# -*- encoding : utf-8 -*-
require 'spec_helper'

describe SessionController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

end
