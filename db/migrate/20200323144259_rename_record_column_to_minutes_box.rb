class RenameRecordColumnToMinutesBox < ActiveRecord::Migration[5.2]
  def change
    rename_column :minutes_boxes, :record, :conference_record
  end
end
