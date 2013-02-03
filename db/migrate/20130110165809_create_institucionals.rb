class CreateInstitucionals < ActiveRecord::Migration
  def change
    create_table :institucionals do |t|
      t.string :titulo
      t.string :subtitulo
      t.text :contenido
      t.string :resumen
      t.string :tipo
      t.integer :hit
      t.integer :anho
      t.boolean :ver

      t.timestamps
    end
  end
end
