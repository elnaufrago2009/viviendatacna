class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :titulo
      t.string :subtitulo
      t.string :resumen
      t.text :contenido
      t.string :nimage
      t.integer :hit
      t.boolean :ver
      t.boolean :portada
      t.string :pimage
      t.string :presumen
      t.date :fecha
      t.string :autor
      t.integer :tipo

      t.timestamps
    end
  end
end
