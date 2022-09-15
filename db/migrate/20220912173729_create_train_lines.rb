class CreateTrainLines < ActiveRecord::Migration[6.1]
  def change
    create_table :train_lines do |t|
      t.belongs_to :line, index: true
      t.belongs_to :train, index: true

      t.timestamps
    end
  end
end
