class CreateTrains < ActiveRecord::Migration[6.1]
  def change
    create_table :trains do |t|
      t.string :train_number

      t.belongs_to :train_opeartor, index: true
    end
  end
end
