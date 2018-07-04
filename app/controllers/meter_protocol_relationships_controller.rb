class MeterProtocolRelationshipsController < ApplicationController

  def index
    @relationships = MeterToProtocolRelationship.all
  end

end
