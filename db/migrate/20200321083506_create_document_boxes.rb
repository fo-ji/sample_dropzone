class CreateDocumentBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :document_boxes do |t|
      t.string :document

      t.timestamps
    end
  end
end
