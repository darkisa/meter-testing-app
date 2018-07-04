class MeterProtocolRelationshipsController < ApplicationController

  def index
    @relationships = MeterProtocolRelationship.all
  end

  def new
    @relationship = MeterProtocolRelationship.new
    render 'meter_protocol_relationships/_relationship_form'
  end

  def create
    @relationship = MeterProtocolRelationship.new(relationship_params)

    @relationship.save
    redirect_to meter_protocol_relationships_path, notice: 'Relationship created'
  end

  def edit
    @relationship = MeterProtocolRelationship.find(params[:id])
    render 'meter_protocol_relationships/_relationship_form'
  end

  def update
    @relationship = MeterProtocolRelationship.find(params[:id])
    if @relationship.update(relationship_params)
      redirect_to meter_protocol_relationships_path, notice: 'Relationship was updated'
    else
      flash[:notice] = @relationship.errors
      redirect_back(fallback_location: meter_protocol_relationships_path)
    end
  end

  def destroy
    @relationship = MeterProtocolRelationship.find(params[:id])
    @relationship.destroy
    redirect_to meter_protocol_relationships_path, notice: 'Relationship was deleted'
  end

  private

  def relationship_params
    params.require(:meter_protocol_relationship).permit!
  end

end
