class CreateTestResults < ActiveRecord::Migration[5.1]
  def change
    create_table :test_results do |t|
      t.integer :test_id
      t.string :test_name
      t.date :test_date
      t.time :start_time
      t.time :end_time
      t.string :operator
      t.string :test_type
      t.string :meter_size
      t.string :meter_type
      t.string :meter_brand
      t.string :serial_no
      t.string :account
      t.float :tp1_rate
      t.float :tp1_accuracy
      t.float :tp2_rate
      t.float :tp2_accuracy
      t.float :tp3_rate
      t.float :tp3_accuracy
      t.float :tp4_rate
      t.float :tp4_accuracy
      t.float :tp5_rate
      t.float :tp5_accuracy
      t.float :tp6_rate
      t.float :tp6_accuracy
      t.float :tp7_rate
      t.float :tp7_accuracy
      t.float :tp8_rate
      t.float :tp8_accuracy
      t.float :tp9_rate
      t.float :tp9_accuracy
      t.float :tp10_rate
      t.float :tp10accuracy
      t.float :tp11_rate
      t.float :tp11_accuracy
      t.text :comments

      t.timestamps
    end
  end
end
