class CreateTestTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :test_types do |t|
      t.string :test_type

      t.timestamps
    end
  end
end
