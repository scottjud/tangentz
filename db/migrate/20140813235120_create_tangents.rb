class CreateTangents < ActiveRecord::Migration
  def change
    create_table :tangents do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
