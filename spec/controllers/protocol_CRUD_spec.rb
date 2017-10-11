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
      params = { :name => 'test' } 
      # params = FactoryGirl.attributes_for(:protocol)
      Protocol.any_instance.stub(:save).and_return(false)
      post :create, :params => { :protocol =>  params }
      expect(flash[:notice]).not_to be_empty
    end
  end

end