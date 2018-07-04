class CreateMeters < ActiveRecord::Migration[5.1]
  def change
    create_table :meters do |t|
      t.string    :serial
      t.decimal   :size
      t.string    :type
      t.string    :brand
      t.string    :model
      t.datetime  :purchased
      t.datetime  :installed

      t.timestamps
    end
  end
end
