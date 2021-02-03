class CreateCalculations < ActiveRecord::Migration[6.0]
  def change
    create_table :calculations do |t|
      t.decimal :principal
      t.decimal :interest
      t.number :years
      t.decimal :total

      t.timestamps
    end
  end
end
