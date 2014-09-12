class CreatePesquisadors < ActiveRecord::Migration
  def change
    create_table :pesquisadors do |t|
      t.string :nome
      t.string :cnpq
      t.string :email
      t.references :foto, index: true

      t.timestamps
    end
  end
end
