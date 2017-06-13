class CreateFactories < ActiveRecord::Migration[5.0]
  def change
    create_table :factories do |t|
      t.string :name 
      t.timestamps
    end
  end
end
