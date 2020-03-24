class CreateMinutesBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :minutes_boxes do |t|
      t.string :record

      t.timestamps
    end
  end
end
