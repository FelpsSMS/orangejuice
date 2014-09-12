class CreateTematicas < ActiveRecord::Migration
  def change
    create_table :tematicas do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
