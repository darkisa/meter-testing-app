require 'spec_helper'

describe ProtocolsController do
  describe '#index' do

    it 'renders a table with all protocols' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe '#create' do
    it 'fails to save because the name already exists' do
      params = FactoryGirl.attributes_for(:protocol)
      post :create, :params => { :protocol => params }
    end
  end

end