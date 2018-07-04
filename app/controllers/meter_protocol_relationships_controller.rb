class MeterProtocolRelationshipsController < ApplicationController

  def index
    @relationships = MeterToProtocolRelationship.all
  end

  def new
    @relationship = MeterToProtocolRelationship.new
  end

  def create
    @relationship = MeterToProtocolRelationship.new(relationship_params)

    @relationship.save
    redirect_to meter_protocol_relationships_path, notice: 'Relationship created'
  end

  private

  def relationship_params
    params.require(:meter_to_protocol_relationship).permit!

  end

end
