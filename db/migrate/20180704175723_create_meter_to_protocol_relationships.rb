class CreateMeterToProtocolRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :meter_to_protocol_relationships do |t|
      t.decimal :size
      t.string  :type
      t.string  :brand
      t.string  :model
      t.string  :test_type
      t.string  :protocol_name

      t.timestamps
    end
  end
end
