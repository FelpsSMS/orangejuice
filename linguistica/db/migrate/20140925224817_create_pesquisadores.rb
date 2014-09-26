class CreatePesquisadores < ActiveRecord::Migration
  def change
    create_table :pesquisadores do |t|
      t.string :pesquisador_nome
      t.string :pesquisador_cnpq
      t.string :pesquisador_contato
      t.references :arquivo, index: true

      t.timestamps
    end
  end
end
