class CreateDirectorios < ActiveRecord::Migration
  def change
    create_table :directorios do |t|
      t.string :nombre
      t.string :cargo
      t.string :email
      t.string :telefono
      t.string :movil
      t.string :foto
      t.text :biografia
      t.integer :hit
      t.string :resumen
      t.string :tipo
      t.boolean :ver


      t.timestamps
    end
  end
end
