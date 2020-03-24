class RenameConferenceRecordColumnToMinutesBox < ActiveRecord::Migration[5.2]
  def change
    rename_column :minutes_boxes, :conference_record, :meeting
  end
end
