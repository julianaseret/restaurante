class CreatePratos < ActiveRecord::Migration
  def change
    create_table :pratos do |t|
      t.string :nome
      t.string :tipo
      t.decimal :preco

      t.timestamps
    end
  end
end
