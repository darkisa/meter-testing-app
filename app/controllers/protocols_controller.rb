class ProtocolsController < ApplicationController
  #protect_from_forgery except: :index
  
  def index
  end

  def show
    @protocol = Protocol.find(params[:id])
  end

  def new
    @protocol = Protocol.new
  end

  def edit
  end

  def create
    @protocol = Protocol.new(protocol_params)

    @protocol.save
    redirect_back(fallback_location: 'test_results#index')
  end

  def update
    @protocol = Protocol.find(params[:id])


    if @protocol.update(protocol_params)
      redirect_back(fallback_location: 'test_results#index')
    else
      render 'index'
    end
  end

  def destroy
    @protocol = Protocol.find(params[:id])

    @protocol.destroy
    redirect_back(fallback_location: 'test_results#index')
  end

private
  def protocol_params
   params.require(:protocol).permit!
  end

end
