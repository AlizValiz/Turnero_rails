class CreateCita < ActiveRecord::Migration[5.2]
  def change
    create_table :cita do |t|
      t.string :Name
      t.string :Apellido
      t.string :Edad
      t.string :Diagnostico
      t.string :Notas

      t.timestamps
    end
  end
end
