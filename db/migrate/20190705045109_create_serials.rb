class CreateSerials < ActiveRecord::Migration[5.2]
  def change
    create_table :serials do |t|
      t.string :serialNumber
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
