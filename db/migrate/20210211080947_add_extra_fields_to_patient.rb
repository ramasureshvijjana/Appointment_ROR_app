class AddExtraFieldsToPatient < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :oppointment_time, :datetime
  end
end
