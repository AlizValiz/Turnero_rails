class CreateDoctorLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :doctor_logs do |t|
      t.string :Name
      t.string :Especialidad

      t.timestamps
    end
  end
end
