class CreateNormativos < ActiveRecord::Migration
  def change
    create_table :normativos do |t|
      t.string :nombre
      t.string :subtitulo
      t.string :resumen
      t.integer :anho
      t.text :contenido
      t.string :archivo
      t.string :tipo
      t.integer :hit
      t.boolean :ver

      t.timestamps
    end
  end
end
