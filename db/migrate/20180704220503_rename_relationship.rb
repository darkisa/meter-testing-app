class RenameRelationship < ActiveRecord::Migration[5.1]
   def change
     rename_table :meter_to_protocol_relationships, :meter_protocol_relationships
   end 
end
