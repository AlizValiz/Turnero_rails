class CreatePatientLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :patient_logs do |t|
      t.string :Nombre
      t.string :Apellido
      t.string :Fecha_Nac
      t.string :Sexo
      t.string :Especialidad

      t.timestamps
    end
  end
end
