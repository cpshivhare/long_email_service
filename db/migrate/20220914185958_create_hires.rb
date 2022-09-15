class CreateHires < ActiveRecord::Migration[6.1]
  def change
    create_table :hires do |t|

      t.timestamps
    end
  end
end
