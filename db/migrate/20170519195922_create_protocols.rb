class CreateProtocols < ActiveRecord::Migration[5.1]
  def change
    create_table :protocols do |t|
      t.float :tp1
      t.float :tp2
      t.float :tp3
      t.float :tp4
      t.float :tp5
      t.float :tp6
      t.float :tp7
      t.float :tp8
      t.float :tp9
      t.float :tp10
      t.float :tp11
      t.boolean :compound
      t.string :name

      t.timestamps
    end
  end
end
