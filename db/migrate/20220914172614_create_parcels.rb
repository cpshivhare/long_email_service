class CreateParcels < ActiveRecord::Migration[6.1]
  def change
    create_table :parcels do |t|
      t.decimal :weight, precision: 5, scale: 2, default: 0.0
      t.decimal :width, :decimal, precision: 5, scale: 2, default: 0.0
      t.decimal :height, :decimal, precision: 5, scale: 2, default: 0.0
      t.belongs_to :parcel_owner, index: true

      t.timestamps
    end
  end
end
