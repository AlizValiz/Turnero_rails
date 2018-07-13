class CreatePatientLogins < ActiveRecord::Migration[5.2]
  def change
    create_table :patient_logins do |t|
      t.string :Nombre
      t.string :Apellidos
      t.timestamp :Fecha
      t.string :sexo
      t.string :Especialidad

      t.timestamps
    end
  end
end
