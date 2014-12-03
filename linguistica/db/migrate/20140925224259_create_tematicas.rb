class CreateTematicas < ActiveRecord::Migration
  def change
    create_table :tematicas do |t|
      t.string :tematica_titulo
      t.text :tematica_descricao

      t.timestamps
    end
  end
end
