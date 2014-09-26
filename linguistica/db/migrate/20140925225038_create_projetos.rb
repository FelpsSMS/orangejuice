class CreateProjetos < ActiveRecord::Migration
  def change
    create_table :projetos do |t|
      t.string :projeto_titulo
      t.text :projeto_descricao
      t.references :tematica, index: true
      t.references :pesquisador, index: true
      t.references :arquivo, index: true

      t.timestamps
    end
  end
end
