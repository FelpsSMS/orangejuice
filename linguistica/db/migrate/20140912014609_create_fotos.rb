class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.string :formato
      t.string :path

      t.timestamps
    end
  end
end
