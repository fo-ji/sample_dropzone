class AddNameToDocumentBox < ActiveRecord::Migration[5.2]
  def change
    add_column :document_boxes, :name, :string
  end
end
