class CreateBebidas < ActiveRecord::Migration
  def change
    create_table :bebidas do |t|
      t.string :nome
      t.string :tipo
      t.decimal :preco

      t.timestamps
    end
  end
end
