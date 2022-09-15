class CreateDistributionCenters < ActiveRecord::Migration[6.1]
  def change
    create_table :distribution_centers do |t|
      t.string :name

      t.timestamps
    end
  end
end
