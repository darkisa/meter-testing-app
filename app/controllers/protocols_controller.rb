class ProtocolsController < ApplicationController
  protect_from_forgery except: :index
  
  def index
    @protocols = Protocol.all
  end

  def show
    @protocol = Protocol.find(params[:id])
  end

  def new
    @protocol = Protocol.new
    @heading = 'New Protocol'
    @submit_text = 'Submit'

    render 'protocols/_protocol_form'
  end

  def edit
    @protocol = Protocol.find(params[:id])
    @heading = 'Edit Protocol'
    @submit_text = 'Update'

    render 'protocols/_protocol_form'
  end

  def create
    @protocol = Protocol.new(protocol_params)

    if @protocol.save
      flash[:notice] = 'New protocol added'
      redirect_back(fallback_location: 'test_results#index')
    else
      flash[:notice] = @protocol.errors[:name]
      render 'protocols/_protocol_form'
    end
  end

  def update
    @protocol = Protocol.find(params[:id])

    if @protocol.update(protocol_params)
      flash[:notice] = 'Protocol has been updated'
      redirect_back(fallback_location: 'test_results#index')
    else
      flash[:notice] = 'An error occured'
      render 'index'
    end
  end

  def destroy
    @protocol = Protocol.find(params[:id])

    @protocol.destroy
    flash[:notice] = 'Protocol has been deleted'
    redirect_back(fallback_location: 'test_results#index')
  end

private
  def protocol_params
   params.require(:protocol).permit!
  end

end
