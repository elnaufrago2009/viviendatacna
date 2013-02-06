class CreateComunicados < ActiveRecord::Migration
  def change
    create_table :comunicados do |t|
      t.string :titulo
      t.string :resumen
      t.text :contenido
      t.date :fecha
      t.string :carchivo
      t.string :visible

      t.timestamps
    end
  end
end
