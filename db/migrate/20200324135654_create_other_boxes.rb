class CreateOtherBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :other_boxes do |t|
      t.string :other
      
      t.timestamps
    end
  end
end
