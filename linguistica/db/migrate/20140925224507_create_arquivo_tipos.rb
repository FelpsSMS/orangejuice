class CreateArquivoTipos < ActiveRecord::Migration
  def change
    create_table :arquivo_tipos do |t|
      t.string :arquivo_tipo_descricao

      t.timestamps
    end
  end
end
